# Baby-Step Recovery Guidelines

When a baby step fails verification or introduces an unexpected error, follow these rules.

---

## 1. Stop Immediately (Do Not Compound)

- **The Golden Rule**: Never write more speculative code to "fix" an unverified step.
- When an assertion or build fails, pause right there. The failure radius is guaranteed to be small because only the current baby step was modified.

---

## 2. The 3-Minute Diagnosis Rule

1. **Examine the Error Message**:
   - Read the exact stack trace and line number.
   - Contrast what was expected vs. what was received.
2. **Review the Baby-Step Diff**:
   - Look at `git diff` for the step. Because the change was atomic (typically < 30 lines), the bug is almost certainly within those lines or in the immediate caller/callee contract.
3. **If Solved Quickly (< 3 mins)**:
   - Make the targeted adjustment.
   - Re-run the verification command.
   - Confirm pass, then proceed.

---

## 3. Fast Revert (When Diagnosis Stalls)

If the cause of the failure is not immediately obvious after 2 attempts:
1. **Revert the Current Baby Step**:
   - `git checkout -- <file>` or discard the single step's edits.
   - Return to the last known green checkpoint.
2. **Re-verify Baseline**:
   - Run verification again to prove the baseline is clean.
3. **Decompose Smaller**:
   - If Step X failed, it was likely too ambitious or contained hidden assumptions.
   - Break Step X into two even smaller steps:
     - Step X.a: Verify assumption / inspect existing behavior with a test or log.
     - Step X.b: Apply minimal isolated patch.
4. **Consult the User if Ambiguity Exists**:
   - If the failure is due to contradictory requirements, missing documentation, or hidden framework constraints, present the concrete discrepancy to the user concisely.
