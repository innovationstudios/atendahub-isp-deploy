#!/usr/bin/env bash
# ---------------------------------------------------------------
# install.sh — cliente executa isso uma única vez na máquina alvo
#
# Fluxo:
#   1. valida docker/docker compose
#   2. carrega imagens pré-buildadas em deploy-pkg/images/*.tar
#      (pulado se as imagens já existirem localmente)
#   3. valida .env (em deploy-pkg/env/.env)
#   4. sobe o stack com 'docker compose up -d'
#   5. aguarda o healthcheck do backend-go
#
# Argumentos:
#   --tag <TAG>      versão das imagens (default: latest)
#   --skip-load      não executar 'docker load' (útil se imagens
#                    vieram por outro meio)
#
# Uso:
#   ./install.sh --tag 1.0.0
# ---------------------------------------------------------------
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
COMPOSE_DIR="${ROOT_DIR}/compose"
ENV_FILE="${ROOT_DIR}/env/.env"
IMAGES_DIR="${ROOT_DIR}/images"
DB_DIR="${ROOT_DIR}/db"

TAG="latest"
SKIP_LOAD=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --tag)
      TAG="$2"; shift 2 ;;
    --skip-load)
      SKIP_LOAD=1; shift ;;
    -h|--help)
      echo "Uso: $0 [--tag TAG] [--skip-load]"; exit 0 ;;
    *)
      echo "Argumento inválido: $1" >&2; exit 1 ;;
  esac
done

log() { printf '[install] %s\n' "$*"; }
err() { printf '[install][ERRO] %s\n' "$*" >&2; exit 1; }

# ----------- 1. Docker presente? -----------
command -v docker >/dev/null 2>&1 || err "docker não encontrado. Instale o Docker Engine 24+."
docker compose version >/dev/null 2>&1 || err "plugin 'docker compose' não encontrado (Docker 24+)."

# ----------- 2. docker load -----------
if [[ "${SKIP_LOAD}" -eq 0 ]]; then
  for svc in backend-go whatsmeow-worker frontend-isp; do
    tar="${IMAGES_DIR}/${svc}-${TAG}.tar"
    if [[ -f "${tar}" ]]; then
      log "carregando imagem ${svc}:${TAG}"
      docker load -i "${tar}"
    else
      log "tarball ausente (${tar}); assumindo imagem já presente ou vinda de registry"
    fi
  done
else
  log "--skip-load: pulando docker load"
fi

# ----------- 3. Validar .env -----------
if [[ ! -f "${ENV_FILE}" ]]; then
  if [[ -f "${ENV_FILE}.example" ]]; then
    log "criando .env a partir de .env.example"
    cp "${ENV_FILE}.example" "${ENV_FILE}"
  else
    err ".env ausente e sem .env.example para modelo"
  fi
fi

required=(DB_PASS JWT_SECRET WHATSMEOW_API_TOKEN WHATSMEOW_JWT_SECRET PUBLIC_URL FRONTEND_URL DB_USER)
missing=0
for key in "${required[@]}"; do
  val="$(grep -E "^${key}=" "${ENV_FILE}" | head -n1 | cut -d'=' -f2- || true)"
  if [[ -z "${val}" || "${val}" == *"troque-"* ]]; then
    err "variável obrigatória ainda é placeholder: ${key} (edite ${ENV_FILE})"
    missing=1
  fi
done
[[ "${missing}" -eq 0 ]] || err "corrija o .env e reexecute install.sh"

# ----------- 4. Subir o stack -----------
log "subindo stack (tag=${TAG})"
cd "${COMPOSE_DIR}"
TAG="${TAG}" docker compose --env-file "${ENV_FILE}" up -d --remove-orphans

# ----------- 5. Healthcheck -----------
log "aguardando backend-go responder /health"
for i in {1..30}; do
  if curl -s -o /dev/null -w "%{http_code}" http://127.0.0.1:18081/health | grep -q 200; then
    log "stack pronto"
    log "frontend-isp: http://127.0.0.1:8082"
    log "backend-go:   http://127.0.0.1:18081"
    log "rabbitmq UI:  http://127.0.0.1:15673"
    log "postgresql:   127.0.0.1:55433"
    exit 0
  fi
  sleep 2
done

err "backend-go não respondeu /health em 60s. Verifique: docker compose logs backend-go"
