#!/usr/bin/env bash
# ---------------------------------------------------------------
# build-images.sh
#
# Constrói as 3 imagens Docker que vão para o cliente:
#   - atendahub/backend-go:<TAG>
#   - atendahub/whatsmeow-worker:<TAG>
#   - atendahub/frontend-isp:<TAG>
#
# Uso:
#   ./deploy-pkg/scripts/build-images.sh [TAG]
#   ./deploy-pkg/scripts/build-images.sh 1.0.0
#
# Em seguida, ./deploy-pkg/scripts/export-images.sh cria os
# tarballs em deploy-pkg/images/ para distribuir ao cliente.
# ---------------------------------------------------------------
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
TAG="${1:-latest}"
REGISTRY="${REGISTRY_NAMESPACE:-atendahub}"

cd "${ROOT_DIR}"

echo "==> build atendahub/${REGISTRY}/backend-go:${TAG}"
docker build \
  -f backend-go/Dockerfile \
  -t "${REGISTRY}/backend-go:${TAG}" \
  ./backend-go

echo "==> build atendahub/${REGISTRY}/whatsmeow-worker:${TAG}"
docker build \
  -f backend-go/whatsmeow-worker/Dockerfile.deploy \
  -t "${REGISTRY}/whatsmeow-worker:${TAG}" \
  ./backend-go/whatsmeow-worker

# Variáveis do frontend-isp são baked no build (ARG VITE_*).
# Use o arquivo frontend-isp/.env ou passe via ambiente.
if [[ -f frontend-isp/.env ]]; then
  set -a
  # shellcheck disable=SC1091
  . frontend-isp/.env
  set +a
fi

echo "==> build atendahub/${REGISTRY}/frontend-isp:${TAG}"
docker build \
  --build-arg "VITE_API_URL=${VITE_API_URL:-https://app.exemplo.com}" \
  --build-arg "VITE_BACKEND_URL=${VITE_BACKEND_URL:-https://app.exemplo.com}" \
  --build-arg "VITE_SOCKET_URL=${VITE_SOCKET_URL:-https://app.exemplo.com}" \
  --build-arg "VITE_APP_NAME=${VITE_APP_NAME:-AtendaHub}" \
  -f frontend-isp/Dockerfile \
  -t "${REGISTRY}/frontend-isp:${TAG}" \
  ./frontend-isp

echo "==> imagens geradas:"
docker images --format "table {{.Repository}}:{{.Tag}}\t{{.Size}}" \
  | grep -E "${REGISTRY}/(backend-go|whatsmeow-worker|frontend-isp):${TAG}" || true

echo
echo "Próximo passo:"
echo "  ./deploy-pkg/scripts/export-images.sh ${TAG}"
