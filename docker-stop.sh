#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

echo "==> Stopping next-ai-draw-io (docker compose)..."
docker compose down

echo "==> Stopped."
docker compose ps
