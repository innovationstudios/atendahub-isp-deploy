#!/usr/bin/env bash
# ---------------------------------------------------------------
# export-images.sh
#
# Empacota as 3 imagens (backend-go, whatsmeow-worker, frontend-isp)
# em tarballs dentro de deploy-pkg/images/ para distribuição offline.
#
# Uso:
#   ./deploy-pkg/scripts/export-images.sh [TAG]
# ---------------------------------------------------------------
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
TAG="${1:-latest}"
REGISTRY="${REGISTRY_NAMESPACE:-atendahub}"
OUT_DIR="${ROOT_DIR}/deploy-pkg/images"

mkdir -p "${OUT_DIR}"

declare -a SERVICES=("backend-go" "whatsmeow-worker" "frontend-isp")

for svc in "${SERVICES[@]}"; do
  src="${REGISTRY}/${svc}:${TAG}"
  dst="${OUT_DIR}/${svc}-${TAG}.tar"
  echo "==> docker save ${src} -> ${dst}"
  docker save -o "${dst}" "${src}"
  ls -lh "${dst}"
done

echo
echo "Imagens prontas em ${OUT_DIR}/"
ls -lh "${OUT_DIR}"
