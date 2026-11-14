# Operator Queue

Last updated: 2026-11-14 01:58 EST (America/New_York, UTC-5)

Because no `operator_afk.json` or `data/operator_afk.json` file was present in the workspace, the operator is treated as away per operator-AFK rules. All automatable installation and setup steps have been completed; operator-only credential and decision items are queued below.

## 1. Required Secret: `ANTHROPIC_API_KEY` (Blocks Phase 2 Step 3 & Phase 4 Smoke Test)

- **Status:** Blocked on missing credential (`ANTHROPIC_API_KEY` is not set in the environment and Claude Code CLI is not logged in).
- **Diagnostic Error:**
  - Direct CLI check (`claude -p --model opus "hello" --output-format json`):
    `{"type":"result","subtype":"success","is_error":true,...,"result":"Not logged in · Please run /login"}`
  - OpenProver smoke test (`openprover --theorem examples/sqrt2_irrational.md --model opus --autonomous --max-time 5m -P 2`):
    `Planner error: Claude CLI streaming error: Not logged in · Please run /login`
- **Action Needed from Operator:**
  1. Provide `ANTHROPIC_API_KEY` (either in Cursor Dashboard under **Cloud Agents > Secrets** as `ANTHROPIC_API_KEY`, in the chat, or exported in your shell):
     ```bash
     export ANTHROPIC_API_KEY="sk-ant-..."
     ```
  2. Run the Phase 4 verification smoke test:
     ```bash
     source .venv/bin/activate
     openprover --theorem examples/sqrt2_irrational.md --model opus --autonomous --max-time 5m -P 2
     ```

## 2. Optional Decision: Phase 3 (Gemini 3.1 Pro Alternative Path)

- **Status:** Deferred per guardrail ("Do not proceed to Phase 3 unless I explicitly confirm I want the Gemini path; Claude is the default and expected path.").
- **Action Needed from Operator:**
  - Confirm if you want the Gemini 3.1 Pro OpenAI-compatible proxy/server path configured and provide `GEMINI_API_KEY`.
