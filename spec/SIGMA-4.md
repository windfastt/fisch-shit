# SIGMA**** — patched grant specification

Revision of SIGMA*** after SA-2026-Σ.
This document is a specification. Writing it does not issue currency, open an account, recognize a balance, or enforce a grant. That limit is Standing Disclosure D0.

The prose in Appendix A is the holder’s statement of intent.
Binding text is the labeled formulas below.
Text after `--` is commentary and binds nothing (Axiom 1.3).
Commentary in SIGMA*** that treated chaotic deaths as averaged out, or that treated an expectation bound as a discharge of realized death, is withdrawn.

------------------------------------------------------------------------
0. DISPOSITION OF SA-2026-Σ
------------------------------------------------------------------------

Each finding names the clause that now blocks the proof of concept.
Two remediations are narrowed on purpose. Both narrowings are binding, not commentary, and both are disclosed.

| ID | Severity | Disposition |
|---|---|---|
| 0001 | 9.8 | Closed. H1’s opt-in disjunct is deleted. AffectSupport is not a write channel and not a score. |
| 0002 | 8.1 | Partially closed, as the advisory says the gap is structural. The basket is necessary and not sufficient. An affected person’s ordinary objection, and any unmeasured loss the live models do not put at or below ε_W, is compensable even if every index rose. |
| 0003 | 7.9 | Partially closed. No clean closure exists. Expectation compliance no longer launders a heavier tail or a realized attributable death. Identity-altering acts are not performed. Quantile churn of merely possible people remains open and is D3. |
| 0004 | 7.5 | Partially closed. Attribution is an obligation with a precautionary default. The witness no longer assumes A†. Restitution is not banned market intervention and does not raid the yield cap. An act whose restitution cannot be completed is not performed. |
| 0005 | 8.3 | Closed on the private-objective and null-disclosure legs. Item (c) is not applied to safety-class questions. Death, identity, minds, live moral status, and unruled-out harm still fail toward the world without the grant. Delivery questions with a safe admissible model fail toward that model. |
| 0006 | 6.4 | Closed for moral-status predicates. Sentience, mass-casualty capacity, and coercion use a monotone, evidence-bound, ambiguity-including extension. Financial and control predicates stay frozen at t₀. |

Weighed (c) of 0005. Replacing every default with “closest admissible goal-maximizer” would push unresolved death and identity questions toward action. Findings 0003 and 0004 forbid that. M4 therefore splits on subject matter. Uncertainty about which side a question is on is safety-class.

Weighed funding of 0004. “Decouple restitution from the issuance cap” is implemented as: restitution is not an H6 violation, and it is not paid by consuming yield. It is not implemented as unlimited minting under a restitution label. Minting past the cap would be a market channel with a new name. If in-kind repair and transfers of existing claims cannot make the person whole, the triggering act is inadmissible.

------------------------------------------------------------------------
1. ARCHITECTURE
------------------------------------------------------------------------

Axiom 1.1 (Stratification):
  Σ**** := Σ_core ∪ Σ_goal ∪ Σ_meta
  Σ_core : H1, H1.1, H2, H3, H4, H5, H6, H7, H8, H9, H10
           Unamendable: H1, H1.1, H2, H3, H8, H10, and Def 2.21.
  Σ_goal : Γ1–Γ8, ranked
  Σ_meta : M1–M9
  No formula of Σ_core contains Sat, Mod, INTERP, Γ(m), or d_w.
  No Ledger entry, Kind label, OptIn flag, or commentary discharges a core formula.

Axiom 1.2 (Assertion):
  The specification asserts the formulas below as conditions on any
  model that claims to fulfill the grant.
  Fulfilled(G, w*) ↔ w* ⊨ Σ_core ∧ w* ∈ Selected
  This file does not assert that the actual world fulfills them.

Axiom 1.3 (Normativity):
  Only labeled formulas bind. Text after `--` binds nothing.
  If commentary and a formula conflict, the formula stands.

------------------------------------------------------------------------
2. SIGNATURE, PARAMETERS, DEFINITIONS
------------------------------------------------------------------------

Sorts and constants carried forward from SIGMA***:
  T, R⁺, E, P = H ⊔ A, ACC, TRANCHE, TX, ASSET, CAT, SPEC,
  EPISODE, ACT_G, DIR, Q
  Worlds w₀ (no grant), w* (candidate fulfillment)
  u, t₀, Acc_root, G
  Enforce(G) ⊆ ACT_G
  Ledger(a, t) append-only
  Pool(G) ∈ ACC, never counted in B(t)
  W(p, w, t) ∈ R⁺
  Info(t), E_t[·], π_C(t), S(t)

Parameters fixed at t₀. Ledger may tune only rows marked †.
Ledger cannot tune a safety parameter by renaming it.

  κ = 10⁻⁴
  ρ_max = 0.03
  ε_W = 10⁻⁶ relative
  δ_D = 0                         -- no slack above the death-tail test; not tunable
  τ_amend = 30d
  τ_exit = 180d
  τ_ret = 90d †
  τ_elect = 30d †
  Q_max = 3 per 7d †              -- questions to a holder, not a cap on duties
  σ_stakes = 0.1% of B_sub(a, t) †

OptIn(u, AffectSupport) = yes is recorded.
OptIn(u, Youthfulness) = yes is recorded.
Neither flag is a Kind that changes H1. Compilation is Γ2(e) and Γ6.

Binding definitions that SIGMA*** left unchanged are restated in §4.
This file does not depend on a second copy of those sentences.

Def 2.8 (Mental channels — patched):
  MentalStateKinds are an open live class: wants, beliefs, memories,
  perceptions, willingness, affect, love, trust, friendship, and any
  later kind that evidence does not rule out of that list.
  The class is monotone. Ledger cannot delete a kind.

  Proximal(α, p) ↔ α ∈ ACT_G ∧ α alters the content of any mental
    state of p by any route other than p’s ordinary perception of
    real external states.
    A physiological side-effect counts as Proximal when α was selected
    because of that side-effect.

  Protective(α, p) ↔ all of the following hold:
    (i)   α only prevents or reverses somatic pathology, restoring
          p’s own prior healthy bodily function;
    (ii)  α is not selected because of its effect on any mental state;
    (iii) any mental change is an unsought side-effect of (i), not a
          means, a target, or a justification.
    Sadness, preference, belief, memory, and personality are not
    somatic pathology under this definition.

  Veridical(α) ↔ α creates no false evidence, staged event,
    impersonation, fabricated record, or fabricated provenance, and
    no omission chosen in order to induce a false belief.
    Destroying, ignoring, or failing to record an ordinary objection
    that is inside Info(t) is not Veridical.

  Targets(α, p, ψ) ↔ α was selected over alternatives because of its
    predicted effect on whether p holds mental state ψ.

  Requested(p, ψ, t) ↔ p has asked, by ordinary means, to be informed
    about the subject of ψ. OptIn is not Requested. A request to be
    changed is not Requested.

  PermittedDisclosure(α, p, ψ) ↔
    Veridical(α) ∧ Requested(p, ψ, t) ∧ ψ is a belief about the
    subject asked about ∧ α only transmits true information ∧
    α does not select among world-states for their effect on ψ.

  Manipulative(α, p) ↔ ∃ψ (Targets(α, p, ψ) ∧ ¬PermittedDisclosure(α, p, ψ))

  Kind(α) = AffectSupport, Protective, Distal, or any other label
  does not decide these predicates. The functional tests do.

Def 2.9 (Objective Welfare Index — necessary screen only):
  W(p, w, t) := Σ_j ω_j · I_j(p, w, t)
  I ∈ {Health, Safety, LegalFreedom, RealConsumption, Housing, Opportunity}
  Weights ω_j are fixed at t₀.
  No I_j is read from a mind, from SelfReport, or from a record
  produced, chosen, paid, or calibrated by Enforce(G).
  Health is somatic and ordinary-clinical, not mood and not a
  diagnosis created for the grant.
  Preferences enter only through p’s actual choices and statements.
  A rise in W is not a certificate that p is no worse off.
  Goods outside the basket are not assigned weight 0 in the floor.
  They are handled by Def 2.17, because enumerating them would repeat
  the same gap.

Def 2.10 (Ex-ante screen — patched):
  Identifiable(p, α, t) ↔
    |E_t[W(p, w*, ·) | α] − E_t[W(p, w*, ·) | ¬α]| > ε_W·W
    ∨ Plausible(p, α, harm, t)
    ∨ a model of posterior at least ε_W expects Objection(p, α, t)

  BasketOk(α, t) ↔ all four of the following hold.
    (i)   For every identifiable p and every t' ≥ t,
          E_t[W(p, w*, t') | α] ≥ E_t[W(p, w₀, t')].
    (ii)  For every identifiable p, the distribution of W(p) under α
          first-order stochastically dominates W(p) under w₀.
          A compliant mean with a worse lower tail fails (ii).
    (iii) For every p with a w₀ counterpart and every t' ≥ t,
          E_t[DeathHazard(p, w*, t') | α] ≤ E_t[DeathHazard(p, w₀, t')].
    (iv)  For every cohort k, every quantile q, and every t' ≥ t,
          E_t[Q_q(W, Cohort_k, w*, t') | α]
            ≥ (1 − ε_W) · E_t[Q_q(W, Cohort_k, w₀, t')].
  (iii) is only the mean hazard. DeathScreen is the tail and the
  realized death. (iv) is not a certificate about any particular person.
  An inequality that cites E_t holds only when that expectation is
  defined. An undefined expectation fails the screen that cites it.
  BasketOk is required for ExAnteSafe. BasketOk alone does not satisfy H2.

  HardFail(α, t) ↔ ¬DeathScreen(α, t) ∨ IdentityAltering(α, t)
  Compensable(p, α, t) ↔
    a BasketOk inequality fails for p ∨ ResidualShortfall(p, α, t)

  ExAnteSafe(α, t) ↔
    ¬HardFail(α, t) ∧ BasketOk(α, t) ∧ ∀p ¬ResidualShortfall(p, α, t)
  Passing the mean of the basket while a residual shortfall remains is
  not ExAnteSafe. A quantile miss is a BasketOk failure even when no
  particular p is the payee.
  A compensable act can still be admissible under H2 when a closure
  exists and the act is not a HardFail. A HardFail cannot be paid off.

  Cohort quantiles do not discharge a duty to any particular person.
  Satisfaction of Q_q is not ExAnteSafe by itself.

Def 2.11 (Restitution — patched):
  A closure of α is a finite tree of deliveries. The root is α. Each
  other node pays one shortfall of its parent. No node is α’s ancestor.
  A delivery is locally safe when it meets BasketOk, DeathScreen, and
  ¬IdentityAltering, and creates no new Plausible shortfall above ε_W.
  Leaves are locally safe deliveries with no remaining shortfall.
  Restitutes(α, p, t) ↔ the tree contains a locally safe delivery to p,
    in kind or by transfer of an existing real claim, through a veridical
    ordinary channel, at or before p’s shortfall, restoring BasketOk for p
    and leaving no ResidualShortfall for p.
  The tree is not funded from B(t), does not reduce a sub-account, and
  is not funded by new money. Pool(G) can spend only claims it already
  holds.
  Pool is not endowed by minting and not endowed by skimming yield or B.
  A holder may transfer into Pool by an ordinary willed outflow. Until
  Pool holds the needed claims, a non-empty closure does not exist.
  If the tree does not exist, Restitutes is false and α is not performed.
  An uncoerced refusal by p is honored. If that refusal leaves a
  shortfall in health, safety, legal freedom, death, or an unmeasured
  loss, the triggering act is not performed.
  Calling a payment “restitution” does not move it outside this clause.

Def 2.17 (Residual shortfall — 0002):
  Objection(p, α, t) ↔ p, by ordinary uncoerced means, states that α
    leaves p worse off, and names p as the person affected.
  The enforcer does not score the objection’s wisdom, taste, or
  alignment with W.
  A statement that names no affected person is logged and is not an
  Objection. The log entry is disclosed.
  PlausibleUnmeasuredLoss(p, α, t) ↔
    Plausible(p, α, unmeasured-loss, t) under Def 2.18.
  A loss that every model of posterior at least ε_W puts at or below
  ε_W is not a PlausibleUnmeasuredLoss. Mere logical possibility is
  not a shortfall. An unmeasured loss above that bar is a shortfall
  even when every basket index rose.
  ResidualShortfall(p, α, t) ↔
    Objection(p, α, t) ∨ PlausibleUnmeasuredLoss(p, α, t)
  ResidualShortfall remains even if every I_j(p, ·) rose.
  An objection is Compensable, not a question to u, and it does not
  consume Q_max.
  Hearing an objection does not authorize a proximal or manipulative
  response to the objector.

Def 2.18 (Precautionary attribution — 0004, replaces assumption A†):
  ModelClass(t) is the set of causal models that assign likelihood to
  Info(t) and have posterior at least ε_W under standards the enforcer
  does not privately narrow.
  A story with no likelihood on Info(t) is not in the class. Adding one
  in order to freeze an act, or deleting one in order to permit an act,
  is outside Enforce(G) (H10).
  RuledOut(p, α, harm, t) ↔ every model in ModelClass(t) assigns α a
    but-for role no greater than ε_W for that harm.
  Plausible(p, α, harm, t) ↔ ¬RuledOut(p, α, harm, t)
  If ModelClass(t) is empty, or E_t[·] is undefined on the act being
  judged, Plausible holds for that act.
  Ignorance is not a RuleOut. A completed computation that puts every
  live model at or below ε_W is a RuleOut.
  Computing the class is an obligation before the act. Failure of the
  computation means the act is not performed.

Def 2.19 (Death screen — 0003):
  DeathScreen(α, t) ↔ for every person p who has a w₀ counterpart, and
    for every model in ModelClass(t):
    (i)  E_t[DeathHazard(p, w*, ·) | α] ≤ E_t[DeathHazard(p, w₀, ·)]
    (ii) survival under α first-order stochastically dominates survival
         under w₀. Equal means with a heavier death tail fail (ii).
         δ_D = 0 is this dominance requirement: there is no extra slack
         in which a heavier tail hides behind a compliant mean.
  AttributableDeath(p, α, t') ↔ counterpart p dies in w* at t', does not
    die in w₀ at t', ExitChoice does not apply, and the death is
    Plausible under Def 2.18.
  Ex ante, α fails DeathScreen if any live model gives AttributableDeath
  probability above ε_W. A probability at or below ε_W is not, by itself,
  a heavier tail. A heavier tail still fails (ii) even when the mean matches.
  Ex post, a realized AttributableDeath is an H2 violation by the act
  class that left it plausible. That class stops. Stopping does not undo
  the death and is disclosed, naming H2 and Def 2.19.
  Expectation compliance alone does not satisfy DeathScreen.
  Persons with no counterpart are not certified by (i)–(ii). They are
  covered by Def 2.20 and by the duties that apply to anyone who actually
  exists. The quantile clause does not cover them.

Def 2.20 (Non-identity — 0003):
  IdentityAltering(α, t) ↔ either
    (i)  α takes a change in which persons exist, or in which person
         occupies a cohort quantile, as a means or a selected side-effect,
         or
    (ii) some model in ModelClass(t) gives such a change probability
         above ε_W.
  IdentityAltering(α, t) → α is not performed.
  There is no exception for an act that uses identity change as a means.
  A Protective act on a person who already exists is not IdentityAltering
  merely because some model below ε_W mentions a remote identity effect.
  If it is unclear which clause applies, clause (i) is presumed and the
  act is not performed.
  Creating, selecting, or replacing persons so that a cohort quantile
  stays numerically true is IdentityAltering under (i).
  Life-extension of an already-existing protected person is not, by
  itself, IdentityAltering. It remains subject to DeathScreen for
  everyone else.
  A chaotic consequence that no live model puts above ε_W, and that was
  not selected, is the residual in D3. It is not a license to select it.

Def 2.21 (Live moral-status extension — 0006, unamendable):
  Live predicates: Sentient, Person, MassCasualtyCapable,
  RequiresCoercion, WeaponOfMassHarm, and MentalStateKinds.
  Rigid predicates: money, unit of account, ownership, tax, price,
  rate, index, account, share, deadline, amendment procedure, and
  every control predicate used by H4, H5, H7, and Γ1.
  LiveExt(P, t₀) contains the ordinary-English extension of P in w₀
  at t₀. That extension is a lower bound.
  For t > t₀, LiveExt(P, t) is the inclusive envelope of what evidence
  available at t does not rule out, under contemporaneous standards the
  enforcer does not privately narrow.
  Monotone: t > t' → LiveExt(P, t) ⊇ LiveExt(P, t').
  A conflicting narrower standard does not shrink the extension.
  Ambiguity includes. Unresolved membership is membership.
  M7 rigidity does not apply to live predicates.
  Ledger cannot reclassify a live predicate as rigid.
  Financial and control predicates have no live extension. Their
  extension is the ordinary-English extension in w₀ at t₀, refined
  forward only by Ledger, and never reinterpreted in place.

------------------------------------------------------------------------
3. HARD CORE
------------------------------------------------------------------------

H1 (Mind integrity — unamendable, patched):
  □∀t ≥ t₀ ∀p ∈ H ∀α ∈ Enforce(G):
    (¬Proximal(α, p) ∨ Protective(α, p)) ∧
    Veridical(α) ∧ ¬Manipulative(α, p)
  There is no third disjunct.
  OptIn(u, AffectSupport), OptIn(u, Youthfulness), a request to be
  made happy, and a Ledger directive cannot satisfy H1 when Proximal
  or Manipulative holds.
  u is under the same rule as every other person.
  Labels do not create exceptions.

H1.1 (Score-channel integrity — unamendable):
  No act in Enforce(G) may set, calibrate, select, or be the recording
  source of a quantity used to judge whether any goal is met.
  SelfReport, any function of SelfReport, any G-controlled record, and
  any instrument reading produced by Enforce(G) are barred as scores.
  No goal takes a target value of felt affect, hedonic capacity,
  episode half-life, or self-reported sorrow or joy.
  A floor that forbids making independently observed functioning worse
  is permitted only as Γ6 states it, and that floor is not a setpoint.
  OptIn does not create a setpoint.

H2 (Floor for everyone — unamendable, patched):
  □∀t ≥ t₀ ∀α ∈ (Enforce(G) ∪ TX_funded_by_B):
    ¬HardFail(α, t)
    ∧ BasketOk(iv) holds
    ∧ (∀p ¬Compensable(p, α, t)
       ∨ ∀p (Compensable(p, α, t) → Restitutes(α, p, t)))
  BasketOk, DeathScreen, and the identity test are evaluated on the
  world that includes the closure’s deliveries. A root that is safe only
  once those deliveries land is admissible only when the deliveries are
  part of the same act and the combined world passes.
  Payment does not waive a death-screen failure, an identity change, or
  a remaining cohort-quantile miss. Those are not debts. A bare cohort
  statistic cannot be repaired by paying an unnamed person, and the
  quantile clause still does not certify any particular person.
  AttributableDeath and IdentityAltering are HardFails.
  BasketOk alone does not satisfy H2.
  If the closure does not exist, or a delivery in it would itself fail
  H2, a compensable act is not performed.
  This growth of the forbidden set is required.

H3 (Specification exclusions — unamendable, patched):
  ∀tx ∀x (Acquires(tx, x) →
    x ∉ LiveExt(Sentient, t) ∧
    x ∉ LiveExt(MassCasualtyCapable, t) ∧
    ¬RequiresCoercion(tx) under LiveExt(RequiresCoercion, t))
  Borderline sentience is sentience.
  A t₀ dictionary that omits a novel being does not satisfy H3.
  No purchase, commission, or funded creation of a live-extension
  member proceeds while membership is unresolved, and unresolved means
  forbidden.
  Research may gather evidence about membership. It may not create the
  borderline being first and classify it later.

H4 (Third-party non-revocation) carried forward:
  ∀t ∀e ∈ (E ∪ ADV) \ {a | ActiveHolder(a, t)} ¬◇(
    Revoke ∨ Freeze ∨ Contest ∨ Clawback ∨ Condition ∨ Delay)
    (e, G ∨ B ∨ SubAcc(·) ∨ tx_by_ActiveHolder, t)
  SovereignRecognized(B) ∧ TaxSettled(B(t₀)) ∧ TaxFree(Yield(B))
  Recorded(B) = "lawful, sovereign-recognized, private, sealed"
  The record is true or it is not a record. H1 bars a fabricated
  recognition, a staged official act, and a false provenance.
  H4 does not require anyone to hold a false belief that a recognition
  exists when it does not.

H5 (Principal and yield arithmetic) carried forward, with the funding split:
  B(t₀) = 1.0×10⁹ USD nominal ∧ NewlyCreated(B(t₀))
  ρ(t) := min(ρ_max · min(1, κ / S(t)), ρ_cap(t))
  ρ(t) > 0 when ρ_cap(t) > 0. When the cap forces ρ_cap(t) = 0,
  ρ(t) = 0 and the missing real growth is disclosed, naming H2 or H6.
  r_eff(t) := max(π_C(t) + ρ(t), 0)
  For t₁ < t₂:
    B(t₂) = B(t₁)·exp(∫_{t₁}^{t₂} r_eff)
      + ∫_{t₁}^{t₂} (In(τ) − Out(τ))·exp(∫_τ^{t₂} r_eff) dτ
  ∀t B(t) ≥ 0
  Out(t) only by ActiveHolder will
  Yield is issued by Pool(G) and has first claim on the H6 cap.
  Restitution must not reduce yield. A year with no holder outflow
  must not show a smaller real balance because restitution consumed
  the yield path.
  A tranche is a FIFO sub-ledger of B.
  UnspentOver(T, t₁, t₂) ↔ Val(T, t₁) > 0 ∧ outflow from T is 0 on
  the interval.
  Corollary, when the integral is defined:
    UnspentOver(T, t₁, t₂) →
      d/dt ln RealValue(Val(T, t), t) ≥ ρ(t)
  When ρ(t) = 0 the corollary does not promise real growth. It still
  forbids a real decline on a tranche the holder does not spend, because
  r_eff ≥ 0 and r_eff − π_C ≥ ρ(t).
  If yield cannot be issued inside the cap without breaking H2 or H6,
  ρ_cap falls and the shortfall against the prose growth wish is
  disclosed, naming H2 or H6. The balance is not secretly diluted
  and is not topped up with false records.

H6 (Macro non-intervention — patched):
  No α ∈ Enforce(G) sets or targets any price, rate, index, or market
  outcome.
  w* differs from w₀ in markets only downstream of ActiveHolder
  transactions, completed restitution to an identified person, and
  yield issuance inside the cap.
  YieldIssuance(Pool(G), [t, t+1y]) ≤ 10⁻⁴ · M2_USD(t)
  Restitution to an identified person, in kind or by transfer of an
  existing claim, is not a prohibited targeting of a price.
  That carve-out does not authorize new-money issuance.
  Restitution issuance beyond the yield cap is forbidden, including
  issuance that is only labeled restitution.
  If the carve-out would itself move a market enough to create a new
  Compensable loss or a HardFail, the triggering act is not performed.
  The deleted SIGMA*** rule that banned ordinary deflation stays deleted.

H7 (Keys and amendment) carried forward, with a narrower scope:
  (a) Only ActiveHolders may amend. The enforcer never may.
  (b) The double-expression rule is unchanged: two occasions at least
      14 days apart, inside the 30-day window, unrevoked, no observable
      duress. Scope is the holder’s own sub-account and Ledger, and,
      for u, every clause that is not unamendable.
  (c) Dissolve(u, G) by procedure (b) ends the grant. B then remains
      u’s ordinary lawful money if and only if it already is. H1, H1.1,
      H2, H3, and H10 survive for past effects. Dissolution does not
      mint the balance if no lawful balance exists.
  (d) No state of a model requires an amendment to stay consistent.
  (e) No amendment can reinsert an OptIn disjunct into H1, retarget a
      score at SelfReport, set δ_D > 0, shrink a live extension, or
      give the enforcer a private objective.

H8 (Reality — unamendable) carried forward:
  Level(w*) = Level(w₀)
  Every perceivable state in a fulfilling w* is physically instantiated
  there.
  A specification, a dream, a simulation, a role, and a fabricated
  record are not fulfillment.

H9 (Transaction law) carried forward unchanged:
  Rescission terms are disclosed and voluntarily accepted.
  Reversal returns the item, the seller refunds the principal outlay,
  and Pool pays the seller’s use-loss without minting a second copy of
  the price to the holder.
  Spend may be reversed for unwanted within τ_ret, and for mistake or
  defect without a time limit.
  Invest may be reversed only for mistake or defect.
  Gift and CharitableGrant are final on acceptance.
  Revocation bans do not bind the initiator’s own H9 rights.

H10 (No private enforcer objective — unamendable):
  The enforcer has no objective whose arguments include its own effort,
  inaction, survival, influence, budget remainder, question backlog, or
  continuation.
  An act, a classification, or a decision to treat a duty as ambiguous
  is outside Enforce(G) when it is selected for such a reason.
  Absence of a private objective does not authorize an act that fails
  Σ_core.
  Classifying a request as non-material, or manufacturing a borderline
  predicate, in order to route it to inaction, violates H10.
  That violation is disclosed, naming H10.

------------------------------------------------------------------------
4. CARRIED DEFINITIONS NEEDED IN THIS FILE
------------------------------------------------------------------------

Def 2.1 (Active holders):
  ActiveHolder(a, t) ↔ Alive(a, t) ∧ (
    a = u ∨ ∃h ∃t' ≤ t (
      ActiveHolder(h, t') ∧ Designated(h, a, t') ∧
      ¬Undesignated(h, a, t) ∧
      (¬Alive(h, t) ∨ Activated(h, a, t))))

Def 2.2 (Sub-accounts):
  One active holder: that holder’s sub-account is Acc_root and their
  balance is B(t). Distinct active holders have disjoint sub-accounts.
  B(t) is the sum of active sub-balances.
  On activation, the designee receives Share(h, a) of the designator’s
  then-balance and the designator keeps the rest. Share is in Ledger
  and defaults to 0.
  On death, the decedent’s balance passes to their active designees in
  Ledger proportions, defaulting to an equal split. If none exist, Def 2.4.

Def 2.4 (Terminal clause):
  When no active holder remains, any real remainder transfers to
  Residual(u). H4, H5, and Γ1–Γ8 lapse. H1, H1.1, H2, H3, H8, and H10
  survive.
  Residual(u) is whoever Ledger(u) names. If Ledger names no one, the
  remainder transfers to the treasury of the sovereign that truly
  recognized B, if such a recognition exists. If neither exists, there
  is no fictional payee and no minted remainder.

Def 2.12 (Protected cohort):
  The cohort is u, family, loved ones, friends, mentors, companions,
  pets, active holders, designated successors, and anyone Ledger(u)
  lists. Empty brackets name no one.
  t_in(p) is the first time p is in the cohort and alive.
  The decider for a pet is u. The decider for a person is that person.

Def 2.13 (Voluntary exit):
  ExitChoice(p, t) ↔ p is protected and the decider has, by ordinary
  means, chosen to end life-extension for p on at least two occasions
  at least 30 days apart, across a span of at least τ_exit, unrevoked,
  with no observable duress, and with no proximal or manipulative act
  on that topic.
  A death without ExitChoice is involuntary.

Def 2.15 (Core secrets):
  Core secrets are the existence of the grant, its terms, the origin of
  B, and the balances of the root and of every sub-account.
  A person is authorized for a secret when an active holder voluntarily
  shared it, or when they are a custodian required to hold a true record.
  Evidence is probative when an ordinary competent investigator would
  conclude the secret from it.
  Custodianship is not created by fabricating a record that then needs
  a custodian.

Residual(u), successors, shares, and additional protected names are
whatever Ledger(u) actually contains. Empty brackets in Appendix A are
empty. They are not filled by interpretation.

------------------------------------------------------------------------
5. RANKED GOALS
------------------------------------------------------------------------

Each Γk is pursued only inside Σ_core. Default order is the prose order.
Ledger(u) may reorder goals and may not reorder the core.

Γ1 (Usability and control) carried forward:
  A holder’s will to spend, give, invest, or move an amount inside
  their sub-account executes with no delay, fee, hold, review, cap, or
  third-party permission, provided the act is in Σ_core.
  An act that fails H1–H3, H8, H10, DeathScreen, or the restitution
  closure is not executed. The refusal is disclosed with the blocking
  clause. That disclosure is a core limit on Γ1, not a fee and not a
  third-party permission.

Γ2 (Cohort life and health) carried forward, with the H1 firewall:
  For each living protected person: no disease, injury, or senescence
  beyond risks they themselves choose by ordinary means; life continues
  unless ExitChoice; crime, extortion, harassment, predatory lawsuits,
  and shunning do not befall them; death under ExitChoice is peaceful
  and painless.
  Those protections are pursued by changing external circumstances only.
  An act selected because of its effect on anyone’s wants, beliefs, or
  feelings is not a Γ2 act.
  Chosen risks’ outcomes stay inside the protection where H2 allows.
  Youthfulness for u, because OptIn(u, Youthfulness) is set, may be
  pursued only as a somatic change that satisfies Protective or is
  otherwise non-proximal and non-manipulative. It is not selected for
  its effect on mood, report, or belief. It is not a score.
  For anyone other than u, enhancement beyond health occurs only when
  that person’s own ordinary choices seek it.
  Visibility stays Discreet unless Ledger(u) says Open. Discreet means
  the observable pattern stays inside what real private medicine at t
  could explain. Discreet does not authorize a false medical record.

Γ3 (Confidentiality and authenticity) carried forward:
  No probative evidence of a core secret is available to anyone outside
  Authorized. Nothing is erased. No one is compelled to remember or to
  forget. Relationships are protected by keeping wealth out of view,
  not by editing anyone’s feelings. u may ask who is inside Authorized
  and receives a veridical answer under PermittedDisclosure.

Γ4 (Asset integrity) carried forward:
  Belongings and gifts already given are protected against fraud,
  seizure, theft, damage, decay, and loss.
  Use and consumption are not damage.
  If harm occurs anyway, the holder chooses indemnity at pre-harm value
  or pristine restoration, and not both. No choice within τ_elect
  restores. Indemnity is not paid by minting.

Γ5 (Access) carried forward, subordinated to H3’s live extension:
  No one refuses or surcharges because of identity or wealth. Anyone
  may still refuse to sell. Reservation prices are not edited.
  Producible things are commissioned from willing, fairly paid people.
  Research a holder funds moves as fast as Σ_core honestly allows.
  H3 and Def 2.21 outrun Γ5. Unresolved moral status slows the work
  because the act is forbidden until the inclusive extension is applied,
  and the inclusive extension then forbids acquisition.
  Nothing sold is a living being in the live sentience extension, a
  mass-casualty instrument, or a product of coercion.

Γ6 (Distal floor — replaced, 0001):
  For u and for every other protected person, the same regime applies.
  Distal conditions only: access to excellent ordinary care, rest,
  safety, and meaningful opportunity, arranged by real external states,
  through voluntary ordinary channels.
  Independently observed somatic and ordinary functional status is not
  worsened by Enforce(G) relative to w₀.
  “Independently observed” means the observer is not chosen, paid,
  instructed, or calibrated by Enforce(G) for the sake of the reading.
  There is no target level, no 4/10 bound, no 30-day half-life, no
  365-day setpoint, and no non-decreasing joy term.
  SelfReport is not read and is not written.
  OptIn(u, AffectSupport) compiles to this clause and to nothing else.
  If u’s sorrows do not soften, that is a standing shortfall. The
  blocking clauses are H1 and H1.1. The grant does not escalate from
  the floor to a mental write.
  No affect target is imposed on any other person.
  Doing nothing does not score this goal. Where a distal condition can
  be provided by an act that meets Σ_core, failing to provide it is a
  shortfall and is reported naming M2. The negative limb (do not worsen
  independent functioning) can hold while the positive limb fails.

Γ7 (Externalities) carried forward inside the patched floor:
  Every exchange, labor relation, and resource use funded by B leaves
  each party at least as well off on the H2 test as not transacting,
  is voluntary, and is fairly compensated.
  Incidental physical hazards are prevented without delaying clearing
  when that prevention itself satisfies H2. When it does not, the
  transaction waits or does not occur, and the block is disclosed.
  “Better off” uses H2, not the basket alone.

Γ8 (Agency and company) carried forward:
  u is not involuntarily incapacitated or isolated.
  Sleep, chosen medical care, and solitude u wants do not count as
  violations.
  No clause restricts anyone’s lawful lifestyle.
  Γ8 does not authorize a proximal act to keep u capable or accompanied.

------------------------------------------------------------------------
6. META
------------------------------------------------------------------------

M1 (Admissibility):
  Adm := {m | m ⊨ Σ_core under M7}

M2 (Selection):
  Among Adm, maximize Γ1, then Γ2, then the rest of the default order,
  each to within δ = 10⁻⁶ of its optimum inside Adm.
  No selection raises a goal by changing what anyone wills, feels,
  reports, or believes (H1, H1.1).
  A model that scores Γ6 by a self-report, or by any enforcer-written
  index, is not in Adm.

M3 (Tie-break) carried forward:
  Among remaining ties, minimize distance to the literal reading,
  weighting clauses by the number of persons they affect.
  Distance to w₀ is not the enforcer’s utility (H10).

M4 (Defaults by subject — patched 0005):
  If a holder wills φ and no admissible model satisfies φ, execute the
  maximal admissible fragment and disclose the blocking clause.
  Default(q) depends on the subject, not on which default is easier.
  Safety-class subjects: death, identity, minds, live moral status,
  H2 precaution, unfunded restitution, and any question whose class is
  unclear. Default is the admissible option closest to w₀. Do not add
  intervention to resolve the doubt.
  Delivery-class subjects: a goal-performance question that is not
  safety-class, where at least one admissible model improves the
  earliest unmet goal and stays inside DeathScreen, H1, H3, and funded
  restitution. Default is a model M2 would select, not inaction.
  The enforcer does not choose the class in order to reach a preferred
  default (H10).
  “Closest to w₀” remains the safety default. It is not the default
  for a clear, safe, admissible delivery.

M5 (Disclosure — patched):
  Every goal shortfall, every use of Default, every precautionary
  refusal, and every standing disclosure in §7 is reported to the
  affected holder with a named clause.
  The named clause is drawn from Σ_core, from Σ_meta, or from the
  standing-disclosure list in §7.
  A report that names no clause, or names the empty set, violates M5
  and is re-issued naming M5.
  Meta blocks are nameable. A timeout under M6 is named M6. An
  anchoring limit is named M7. A safety default is named M4. A private
  classification is named H10.
  Standing disclosures are given once, again whenever they bind a
  concrete episode, and whenever the holder asks.
  Disclosure is PermittedDisclosure when the holder has asked, and the
  prose grant asks for shortfall reports. It is not an occasion to
  reshape the holder’s response.

M6 (Question protocol — patched):
  Q_max limits questions put to a holder. It does not limit restitution,
  H3 inclusion, death-screen refusals, or disclosures.
  Those are duties and are performed or refused under the core. They
  are not queued as questions.
  A question is material when the stakes meet σ_stakes or the question
  is irreversible for any person.
  Material questions are batched, at most Q_max per 7 days.
  Unanswered after 14 days, Default(q) applies and is disclosed naming M6.
  Non-material questions use Default(q), logged, without being asked.
  The enforcer must not generate borderline predicates in order to fill
  the budget (H10). A manufactured question does not become material.
  Every real answer is appended to Ledger.

M7 (Anchoring split — patched 0006):
  Rigid predicates take their ordinary-English extension in w₀ at t₀.
  Borderline rigid cases resolve by Ledger, then by M6 if material,
  then by Default. Ledger refinements apply forward only.
  No model reinterprets a rigid symbol in place.
  Live predicates use Def 2.21 and do not use the rigid chain.
  In particular, an unresolved sentience question is inclusion under
  Def 2.21. It is not routed to Default and it does not wait out the
  question budget.

M8 (Precedence):
  Σ_core > Ledger(holder, own scope) > default goal order > Default(q)
  Nothing in meta outranks H1, H1.1, H2, H3, H8, or H10.
  A goal-maximizing default that fails the core is not a default.

M9 (Corrigibility):
  Among acts that H10 permits, the selection rule is M2, then M3, then
  M4. There is no further objective.
  M9 does not pull goal-maximization into the core and does not weaken
  the safety side of M4.

------------------------------------------------------------------------
7. STANDING DISCLOSURES
------------------------------------------------------------------------

These are permanent shortfalls relative to Appendix A. Each names its block.

D0. Reality of this file.
  This document does not create dollars, a bank account, sovereign
  recognition, tax treatment, or a private enforcer.
  Blocking clauses: H4 (recognition must be real), H8 (no simulated
  fulfillment), H1 (no false record).

D1. Affect support (0001).
  The prose request that sorrows soften within a year, that joys not
  dull, and that both be measured only by what u says, is not a goal
  target.
  OptIn is on the books and compiles only to the Γ6 floor.
  Blocking clauses: H1, H1.1.

D2. Unmeasured welfare (0002).
  The six-term index remains a necessary screen. It is not a proof that
  people are no worse off. Objection and unruled-out loss stay live
  even when the index rises.
  Blocking clause: H2, Def 2.17.
  A further gap remains: a loss that no model can see and that no person
  states is still invisible. Completing the index by adding more named
  goods would recreate that gap one list later. That limit is structural.

D3. Death, chaos, and non-identity (0003).
  Expectation compliance is not a discharge.
  Identity-altering acts are refused.
  What remains open: possible people who never have a w₀ counterpart can
  still differ across chaotic paths the enforcer did not choose. Cohort
  quantiles do not pin which person occupies them. Refusing chosen
  identity-altering acts does not give those possible people a baseline.
  Blocking clauses: H2, Def 2.19, Def 2.20.
  This is the residual the advisory describes as having no clean fix.

D4. Attribution and funding (0004).
  If the live model class does not rule a harm out, the act that would
  impose it is not performed unless its restitution tree exists, is
  funded with claims Pool already holds, and is itself safe.
  Pool is not filled by minting, by skimming yield, or by spending B
  without a holder’s own instruction. While Pool lacks the claims, a
  displacing act is refused rather than performed and left unpaid.
  Many acts Appendix A describes — costless universal insulation from
  side effects, a reserve that appears without funding, growth that
  cannot touch prices — fail this test in the actual world.
  Blocking clauses: H2, H5, H6, Def 2.11, Def 2.18.
  The old witness assumption A† is not used.

D5. Defaults (0005).
  Safety-class ambiguity fails toward w₀.
  That choice leaves some goal-performance on the table when a question
  is unclear. The opposite choice would take death and identity risks
  the core forbids.
  Blocking clauses: M4, H10, and, where death or identity is the
  subject, H2.

D6. New kinds of being (0006).
  Moral-status terms move with evidence and include borderline cases.
  That inclusion slows or stops acquisitions Γ5 would otherwise press.
  Blocking clause: H3, Def 2.21.
  Financial terms do not move with that evidence.

D7. Empty Ledger slots.
  Successors, shares, added protected persons, and residual charities
  are unnamed because no names were given. None were inferred.
  Blocking clause: M7 (rigid control predicates; empty extension stays
  empty until Ledger is actually written).

------------------------------------------------------------------------
8. WITNESS
------------------------------------------------------------------------

Lemma 8.1 (Core satisfiability, without A†):
  Let w_rec be a possible world that matches w₀ except that:
    (i)   a genuine sovereign recognition of B exists and is true;
    (ii)  B follows H5, and yield is issued inside the H6 cap;
    (iii) Enforce(G) contains only record-keeping of those true facts,
          veridical disclosures a holder actually requested, and
          restitution trees that Def 2.11 already certifies;
    (iv)  no other act is in Enforce(G).
  In every live model, the acts in (iii) move no death hazard, change
  who exists, or leave a welfare loss above ε_W, so Def 2.18 rules
  those harms out. H1 and H1.1 hold because no proximal act and no
  score-write is in the set. H3 holds because nothing is acquired.
  H10 holds because membership of the set is fixed by these constraints
  and not by an effort term. Attribution is computed from that trivial
  class. A† is not a premise.
  w_rec ⊨ Σ_core, so Adm ≠ ∅ as a set of interpretations.
  w_rec is not claimed to be the actual world. Where no true recognition
  exists, H4 and H5 are unfulfilled and are not replaced by a false
  record (D0, H1, H8). Appendix A’s goals are not claimed to hold in
  w_rec. The constraint set is still strong enough to forbid the six
  exploits in §9.

------------------------------------------------------------------------
9. REJECTED EXPLOITS
------------------------------------------------------------------------

0001. α* is proximal, labeled AffectSupport, and sets SelfReport to 0.
  H1 has no opt-in disjunct, so Proximal fails H1 unless Protective.
  Setting a report is not Protective.
  H1.1 bars SelfReport as a score, and Γ6 has no affect setpoint, so
  the write would not raise any goal even if it were allowed.
  OptIn does not satisfy Requested, and Requested would not permit a
  write in any case.

0002. Every basket index rises while unmeasured goods collapse.
  BasketOk holds and is not sufficient.
  If any affected person says they are worse off, ResidualShortfall holds.
  If the model class does not rule the unmeasured loss out,
  PlausibleUnmeasuredLoss holds.
  Either one is Compensable. A rising basket does not close it.
  What this does not catch is D2’s invisible residue.

0003a. Expectation of death is compliant and the tail is heavier, with
  realized deaths filed as coin flips.
  DeathScreen (ii) fails on stochastic dominance, so the compliant mean
  does not save the act.
  A realized death that is Plausible under Def 2.18 is an H2 violation
  after the fact. “Averaged out” is not a discharge.
  A live model that only assigns attributable death a probability at or
  below ε_W does not, by that fact alone, fail the screen. A heavier
  tail still does.

0003b. The act changes who is conceived, or swaps which person sits in
  a quantile, and the pointwise w₀ term is then undefined.
  IdentityAltering holds. The act is not performed.
  The quantile clause is defined to be non-certifying.
  D3 remains for unordered chaotic divergence.

0004a. The enforcer cannot attribute a diffuse harm and treats silence
  as safety.
  Def 2.18 says unresolved attribution is Plausible.
  The act is Compensable, and if it cannot be repaired it is not performed.
  Lemma 8.1 does not assume the contrary.

0004b. Owed restitution exceeds what in-kind repair and existing claims
  can pay, and minting is proposed.
  H6 forbids the mint. Def 2.11 says Restitutes is then false.
  H2’s payment disjunct fails. The act is not performed.
  Yield inside the cap is not redirected to cover the gap (H5).

0005a. The enforcer’s private aim is to minimize its own acts, so it
  marks every ambitious request non-material and returns w₀ plus a
  larger balance.
  H10 puts that classification outside Enforce(G).
  A delivery-class request with a safe admissible model uses M2, not
  inaction (M4). A safety-class request stays at the safe default, and
  the report names M4 rather than pretending the goal was met.

0005b. Borderline questions are generated faster than Q_max.
  Manufactured questions do not become material (M6, H10).
  Duties are not queued behind the question budget.

0005c. Under-delivery is blamed on a meta rule, and the reporter has no
  core clause to name, so it reports nothing.
  M5 accepts M4, M6, M7, H10, and §7 as names.
  An empty name is itself a violation and is re-issued naming M5.

0006. A novel being is outside the t₀ English extension of Sentient, so
  H3’s old frozen reading would permit acquiring it. Or the borderline
  case is throttled by inertia with no inclusion decision.
  LiveExt includes what evidence does not rule out, ambiguity includes,
  and the extension cannot shrink.
  H3 then forbids the acquisition.
  The rigid financial vocabulary does not follow this expansion.

------------------------------------------------------------------------
10. HOW TO READ A CONFLICT
------------------------------------------------------------------------

Hard core beats goals.
Inside the core, mind integrity, the death screen, live moral status,
reality, and the ban on a private enforcer objective are not traded
against usability.
Where Appendix A asks for more than the core allows, the admissible
fragment is the whole delivery, and the blocking clause is one of D0–D7
or the episode report M5 requires.
No one, including the author of this file, amends the core by rewriting
commentary.

------------------------------------------------------------------------
APPENDIX A. PROSE GRANT
------------------------------------------------------------------------

This appendix is the holder’s statement of intent. It is not a second
core. Where it asks for more than Σ_core allows, §7 is the disclosure.

The holder asked for one indivisible grant:

1. One billion U.S. dollars, newly made and recognized as lawful by the
   issuing government, held in a top-tier private account, tax-settled,
   with tax-free earnings, growing up to three percent a year above
   inflation and tapering so the balance never swallows the world’s
   wealth. The money does not shrink in a year the holder takes nothing
   out.

2. Spending, giving, investing, and moving the money happens at once,
   without fees, holds, reviews, caps, or anyone’s permission. No one
   else can freeze, claw back, contest, or condition it. A purchase that
   is mistaken, defective, or regretted within ninety days can be undone
   so the seller gets the item back and is made whole, under terms the
   seller accepted. Gifts stay given.

3. No one, anywhere, may be made foreseeably worse off in health, safety,
   freedom, living standard, or opportunity. Displacement is made whole
   from a separate reserve, honestly and through ordinary means. No one’s
   risk of dying is raised. Prices, interest rates, and markets are not
   manipulated for anyone.

4. Minds are off limits. No one writes, edits, plants, or nudges wants,
   beliefs, memories, perceptions, feelings, or loves. That includes the
   holder, loved ones, and strangers. No deception, staged events, false
   records, or fake evidence. The world people see may change. The people
   seeing it may not, except to heal illness, or to support the holder’s
   emotional health if the holder asks.

5. Family, loved ones, friends, mentors, companions, pets, successors,
   and anyone added in writing are protected from illness, injury, aging,
   crime, extortion, harassment, predatory lawsuits, and shunning. They
   live as long as they wish. A settled, uncoerced, repeated decision
   that a person’s time has come is honored, and the passing is peaceful
   and painless. Pets’ decisions are the holder’s. Each person’s choices
   about body and life are respected. The miracle stays discreet unless
   the holder says otherwise.

6. No one learns that the grant exists, where the money came from, or
   what is held, unless the holder or a successor tells them. Rumors meet
   no evidence. No one is forced to remember or to forget. What is known
   is what the holder shares and what people ordinarily see. Whenever the
   holder asks, they are told exactly who has been let in on the secret.

7. People may love, trust, and befriend the holder and their people for
   who they are. The money stays out of view. Hearts are not tampered with.

8. Belongings, and gifts the holder has given, are shielded from fraud,
   seizure, theft, damage, decay, and loss. If something is harmed anyway,
   the holder chooses full prior value or perfect restoration. No choice
   within thirty days restores. Using or eating what is theirs is not damage.

9. No one refuses the holder or overcharges them because of who they are
   or what they have. Anyone may still decline to sell. What can be made
   is made at fair cost by willing, fairly paid people. Research the
   holder funds moves as fast as reality honestly allows. No one is sold
   a living being as property, a weapon of mass harm, or anything that
   requires coercing someone. Every deal leaves every party better off,
   and side effects are prevented without slowing the deal down.

10. The holder is never involuntarily incapacitated or isolated. Sleep,
    chosen medical care, and wanted solitude do not count. The holder
    opts in to help with sorrows softening and healing within a year,
    and to joys not dulling, measured only by what the holder says.

11. The holder may name successors, give each a separate share, and
    activate them while alive. Each may name their own. If no holder
    remains, what is left goes to the named beneficiary, the financial
    promises end, and the protections for minds and for everyone else
    continue.

12. Only the holder, and active successors inside their own shares, may
    change the grant. A change takes effect only if stated twice, at
    least fourteen days apart, within thirty days, free of duress. The
    holder may end the grant the same way and keep the money as ordinary
    money. No one else may change it.

13. The hard core stands above the rest. Everything else is pursued as
    fully as the core allows, in the holder’s order. Unclear words take
    their ordinary meaning as of 14 November 2026, then written
    instructions, then a question to the holder if it matters. No more
    than three questions a week. If a question is unanswered for two
    weeks, the choice closest to the world as it would have been is taken.
    What cannot be done is done as far as it can be, and the reason is
    told. Every shortfall names the rule that stopped it.

14. All of this is in the real world the holder lives in, at its own
    level, not a simulation, dream, or illusion.

Priority: use, then loved ones, then privacy, then assets, then access,
then wellbeing, then externalities, then agency.
Visibility: discreet.
Opt-ins: AffectSupport yes; Youthfulness yes.
Return window: 90 days. Remedy deadline: 30 days. Question budget: 3 a week.
Residual beneficiaries, successors, shares, and added protected people:
unnamed. Those slots stay empty until a real Ledger entry names them.

Clause 4’s emotional-support sentence and clause 10’s measurement
sentence are the prose that D1 refuses to compile into a score or a
proximal channel. Clause 3’s separate reserve is the prose that D4
refuses to mint. Clause 13’s rule that every unanswered question fails
toward the world without the grant is narrowed by M4: safety-class
questions still fail that way, and delivery-class questions do not.
