# Operator Queue

Last updated: 2026-11-14 02:13 EST (America/New_York, UTC-5)

Because no `operator_afk.json` or `data/operator_afk.json` file was present in the workspace, the operator is treated as away per operator-AFK rules. All automatable installation, configuration, and smoke-test steps have been completed; operator-only decision items are listed below.

## 1. Secret: `ANTHROPIC_API_KEY` (Resolved)

- **Status:** Resolved at 2026-11-14 02:09 EST (America/New_York, UTC-5).
- **Verification Outcome:**
  - Exported `ANTHROPIC_API_KEY` in the active shell session (never written to disk or git).
  - Ran the Phase 4 verification smoke test:
    ```bash
    source .venv/bin/activate
    openprover --theorem examples/sqrt2_irrational.md --model opus --autonomous --max-time 5m -P 2
    ```
  - Completed in 3m 18s (5 LLM calls, $0.5771 total cost) and produced `/workspace/runs/prove-that-sqrt2-is-irrational-20261114-070934/PROOF.md` and `DISCUSSION.md`.

## 2. Gemini path (LiteLLM bridge) — configured

- **Status:** Configured at 2025-11-25 01:31 EST (America/New_York, UTC-5).
- **How it works:** OpenProver has no native `gemini` model flag. Use `--model minimax-m2.5 --provider-url http://127.0.0.1:8000` while LiteLLM maps `MiniMaxAI/MiniMax-M2.5` → `gemini/gemini-3.1-pro-preview` (see `config/litellm-gemini.yaml`).
- **Start proxy** (set `GEMINI_API_KEY` in the shell or Cursor Secrets; never commit the key):

  ```bash
  export GEMINI_API_KEY="..."
  pip install -r requirements-gemini.txt   # once
  ./scripts/start-litellm-gemini.sh        # or tmux background session litellm-gemini
  ```

- **Prove example:**

  ```bash
  source .venv/bin/activate
  openprover --theorem examples/addition.md \
    --model minimax-m2.5 \
    --provider-url http://127.0.0.1:8000 \
    --autonomous --max-time 8m -P 1
  ```

- **Smoke test:** `runs/add-42-and-24-20261125-063013/PROOF.md` (~51s, 3 steps).
- **Security:** If the API key was pasted in chat, rotate it in Google AI Studio and store the replacement only in secrets/env.
