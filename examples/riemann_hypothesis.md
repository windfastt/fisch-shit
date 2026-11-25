Prove the **Riemann Hypothesis** (RH).

## Statement (classical)

Let $\zeta(s)$ denote the Riemann zeta function. Prove:

> Every non-trivial zero of $\zeta$ lies on the critical line $\mathrm{Re}(s)=\tfrac{1}{2}$.

Equivalently (critical strip): if $0 < \mathrm{Re}(s) < 1$ and $\zeta(s)=0$, then $\mathrm{Re}(s)=\tfrac{1}{2}$.

## Context for this run

In **November 2026**, mathematician **Levent Alpöge** (Anthropic) announced a proof developed with Claude, accompanied by a large **Lean 4** formalization that independent groups (e.g. MIT verification notes at https://math.mit.edu/~drew/grh/) report compiled against Mathlib’s `RiemannHypothesis` statement.

**Your task for OpenProver:** produce a **standalone, human-readable mathematical proof** of RH at graduate/research level, OR give a **rigorous audit** showing precisely which step fails if a complete proof cannot be found. If you rely on external literature about the 2026 announcement, cite what you use clearly and separate verified Mathlib-level facts from heuristic claims.

Do **not** merely assert that a Lean archive exists; the deliverable is an intelligible proof or a sharp counterexample/obstruction.