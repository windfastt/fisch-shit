#!/usr/bin/env bash
# Start LiteLLM Gemini bridge on http://127.0.0.1:8000 (requires GEMINI_API_KEY).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"
if [[ -z "${GEMINI_API_KEY:-}" ]]; then
  echo "Error: set GEMINI_API_KEY before starting the proxy." >&2
  exit 1
fi
source "$ROOT/.venv/bin/activate"
exec litellm --config "$ROOT/config/litellm-gemini.yaml" --host 127.0.0.1 --port 8000