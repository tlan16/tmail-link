#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

rm -rf dist

docker compose \
  run --rm --build build \
;
