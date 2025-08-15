FROM ghcr.io/astral-sh/uv:debian-slim

WORKDIR /app
COPY uv.lock pyproject.toml ./
RUN uv python install --quiet
ENV PATH="/app/.venv/bin:$PATH"
ENTRYPOINT []

ENV UV_LINK_MODE=copy
RUN --mount=type=cache,target=/root/.cache/uv uv sync --frozen
COPY ./ ./
CMD []
