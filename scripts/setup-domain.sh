#!/usr/bin/env bash
# ---------------------------------------------------------------
# setup-domain.sh
#
# Troca os domínios do AtendaHub ISP e recria os containers.
# Para usar:
#
#   ./scripts/setup-domain.sh --api api.cliente.com.br --app app.cliente.com.br
#
# Efeitos:
#   - Reescreve PUBLIC_URL e FRONTEND_URL em env/.env
#   - Atualiza CORS_ALLOWED_ORIGINS
#   - Recria os containers que dependem dessas vars
#
# NÃO rebuilda a imagem do frontend-isp (se os domínios mudaram,
# peça ao AtendaHub rebuildar antes). Use --rebuild-frontend para
# disparar build-images.sh + export-images.sh localmente.
# ---------------------------------------------------------------
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="${ROOT_DIR}/env/.env"

usage() {
  cat <<EOF
Uso:
  $0 --api api.<dominio> --app app.<dominio> [--email admin@<dominio>]
Exemplo:
  $0 --api api.exemplo.com.br --app app.exemplo.com.br --email admin@exemplo.com.br
EOF
}

API="" APP="" EMAIL=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --api)  API="$2"; shift 2 ;;
    --app)  APP="$2"; shift 2 ;;
    --email) EMAIL="$2"; shift 2 ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Argumento inválido: $1" >&2; usage; exit 1 ;;
  esac
done

[[ -n "${API}"  ]] || { echo "--api é obrigatório"  >&2; usage; exit 1; }
[[ -n "${APP}"  ]] || { echo "--app é obrigatório"  >&2; usage; exit 1; }

if [[ ! -f "${ENV_FILE}" ]]; then
  echo "ERRO: ${ENV_FILE} não existe. Execute install.sh primeiro." >&2
  exit 1
fi

log() { printf '[domain] %s\n' "$*"; }

# Reescreve variáveis controladas no .env
sed -i \
  -e "s|^PUBLIC_URL=.*|PUBLIC_URL=https://${API}|" \
  -e "s|^FRONTEND_URL=.*|FRONTEND_URL=https://${APP}|" \
  -e "s|^CORS_ALLOWED_ORIGINS=.*|CORS_ALLOWED_ORIGINS=https://${APP}|" \
  "${ENV_FILE}"

[[ -n "${EMAIL}" ]] && log "Lembrete: o e-mail ${EMAIL} será usado pelo Let's Encrypt no edge do cliente."

log "PUBLIC_URL  → https://${API}"
log "FRONTEND_URL → https://${APP}"

# Recria os containers relevantes sem precisar rodar install.sh
cd "${ROOT_DIR}/compose"
docker compose --env-file "${ENV_FILE}" up -d --force-recreate backend-go whatsmeow-worker

log "concluído. containers recriados."
echo
echo "Próximos passos:"
echo "  1. Garanta os registros DNS:"
echo "       A  app.${APP#app.}  -> 161.97.116.75   TTL 14400"
echo "       A  api.${API#api.}  -> 161.97.116.75   TTL 14400"
echo "  2. Configure o proxy reverso (Nginx/Caddy) deste servidor para:"
echo "       https://${APP}  -> 127.0.0.1:8082"
echo "       https://${API}  -> 127.0.0.1:18081"
echo "  3. Se as URLs mudaram em relação ao build do frontend-isp, peça ao AtendaHub"
echo "     rebuildar a imagem do frontend-isp com:"
echo "       VITE_API_URL=https://${API} VITE_BACKEND_URL=https://${API} VITE_SOCKET_URL=https://${API} ./scripts/build-images.sh <tag>"
