#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

docker compose --file 'tests/docker-compose.yaml' \
  run --rm --build ci \
    uv run pyright\
;
