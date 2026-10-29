# Operator queue

Decisions and operator-only steps. Items were added by a Cloud Agent while the operator was treated as away, because this repo has no `operator_afk.json`.

## Open

### 2026-10-29 (EDT) · Pulse 1000 input shield (`index.html`, PR #1)

The page works without any of these being answered. Each item records a default the agent picked that only the operator should confirm or change.

1. **Keyboard can't Pause or Reset.** Enter or Space on those buttons shows a notice instead of acting, because a fake HID keyboard looks exactly like a real one. This locks out keyboard-only and switch-access users. Keep this, or let the keyboard act and log the action as "unverified"?
2. **Automation flags lock the controls for the whole session.** If `navigator.webdriver` is set (Selenium, Puppeteer and Playwright by default, Firefox's remote agent) or a ChromeDriver marker is found, Pause and Reset stay disabled until reload. The counter keeps running. Keep the lock, or downgrade it to a warning?
3. **Every Pause and Reset takes two steps.** First a verified press on the button, then a 320–540 ms hold on a ring drawn at a random spot. Three failed real-input checks within 60 s start a cooldown that escalates from 10 s up to 5 min. Is that friction acceptable, or should the ring apply to Reset only?
   - Related: on clocks rounded for privacy (Firefox `resistFingerprinting`, LibreWolf, Mullvad, Tor Browser), the page turns off its dwell and press-cadence timing rules and says so in the log, instead of blocking honest users. Path, ring and trust checks still apply.
4. **What a page on its own can't stop.** The following can still get through, so the page doesn't claim to be unspoofable:
   - a bot that finds the ring on screen (for example pyautogui or AutoHotkey PixelSearch) or reads its canvas pixels from page script, then drives a real or fake HID with humanlike motion and human reaction time;
   - a browser driven over the DevTools protocol with the webdriver flag hidden;
   - an extension or userscript that hooks timers and event getters in every frame at document start. This is usually detected and shown as "Every realm hooked", but never prevented, and a hook that also fakes `Function.prototype.toString` can hide;
   - anyone with DevTools open, who can read the page's state in the debugger.

   If being hard to fake matters for anything with stakes (scores, rewards), the check has to move to a server. Is a server component wanted?
5. **FYI: unreviewed executables in the repo.** `BootstrapperV1.23.exe`, `OperaGXSetup (1).exe` and `tesseract.exe` were committed by upload. The agent did not run, inspect or change them.
