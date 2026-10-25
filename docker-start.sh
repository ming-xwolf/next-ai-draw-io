#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

HOST_PORT=3847

echo "==> Starting next-ai-draw-io (docker compose)..."
docker compose up -d --build

echo "==> Service is up: http://localhost:${HOST_PORT}"
docker compose ps
