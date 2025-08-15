#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

docker compose --file 'tests/docker-compose.yaml' build app

docker compose --file 'tests/docker-compose.yaml' \
  run --rm app \
    uv run ruff format\
;

docker compose --file 'tests/docker-compose.yaml' \
  run --rm app \
    uv run ruff check --fix\
;
