#!/usr/bin/env bash
# Start LiteLLM Gemini bridge on http://127.0.0.1:8000 (requires GEMINI_API_KEY).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
if [[ -z "${GEMINI_API_KEY:-}" && -f "$ROOT/.env.local" ]]; then
  set -a
  # shellcheck disable=SC1091
  source "$ROOT/.env.local"
  set +a
fi
if [[ -z "${GEMINI_API_KEY:-}" ]]; then
  echo "Error: set GEMINI_API_KEY or create .env.local (see .env.local.example)." >&2
  exit 1
fi
source "$ROOT/.venv/bin/activate"
exec litellm --config "$ROOT/config/litellm-gemini.yaml" --host 127.0.0.1 --port 8000