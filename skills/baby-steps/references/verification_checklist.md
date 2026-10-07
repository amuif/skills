# Baby-Step Verification Checklist

Use this checklist during the **Verify** step of each baby step.

---

## 1. Fast Feedback (Individual Step)

Before declaring any baby step complete, verify:
- [ ] **Syntax & Compilation**:
  - Does the language server / compiler report any errors? (e.g., `tsc --noEmit`, `cargo check`, `go build`, `python -m py_compile`).
- [ ] **Targeted Unit Test**:
  - Does the single test or assertion written for this step pass?
  - Did you run ONLY the relevant test file to get sub-second feedback?
- [ ] **Diff Sanity**:
  - Run `git diff` or inspect changes. Did you touch ONLY the lines/files intended?
  - Are there any accidental changes, unneeded imports, or debug prints left behind?
- [ ] **Negative / Failure Test**:
  - If a test was written, did it fail before the implementation was added (Red-Green-Refactor)?

---

## 2. Phase-Level Verification (Gatekeeper)

Before moving from Phase N to Phase N+1:
- [ ] **Full Test Suite / Regression**:
  - Run the entire relevant test suite, not just the new tests.
  - Verify that no existing functionality was broken.
- [ ] **Linter & Formatting**:
  - Run project linter/formatter (e.g. `npm run lint`, `flake8`, `cargo clippy`).
  - Ensure zero new warnings or errors were introduced.
- [ ] **Git Working Tree Status**:
  - Run `git status`. Are all newly added files tracked? Are there untracked scratch files that should be cleaned up or gitignored?
- [ ] **User Alignment**:
  - If the completed phase made significant architectural decisions or surfaced ambiguities, check in with the user before proceeding to the next phase.
