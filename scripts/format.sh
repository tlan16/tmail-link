#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

docker compose build app

docker compose \
  run --rm app \
    uv run ruff format\
;

docker compose \
  run --rm app \
    uv run ruff check --fix\
;
