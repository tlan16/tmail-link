#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

docker compose build ci

docker compose \
  run --rm ci \
    uv run ruff check\
;

docker compose \
  run --rm ci \
    uv run ruff format --check\
;
