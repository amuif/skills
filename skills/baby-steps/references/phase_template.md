# Phase Plan Template

Use this template when planning and tracking phased execution for complex tasks.

```markdown
# Phased Task Execution Plan: [Task Title]

## Goal & Target State
A concise 1-2 sentence description of the desired outcome and success state.

---

## Phase Roadmap

- [ ] **Phase 1: Environment & Baseline Verification**
- [ ] **Phase 2: Foundation & Interfaces / Types**
- [ ] **Phase 3: Core Implementation (Minimal Working Slice)**
- [ ] **Phase 4: Edge Cases & Resilience**
- [ ] **Phase 5: Full Integration & Polish**

---

### Phase 1: Environment & Baseline Verification
- **Goal**: Confirm baseline health, dependencies, and existing test states before touching code.
- **Definition of Done**: Clean git status, existing tests pass, required tools verified.
- **Baby Steps**:
  - [ ] Step 1.1: Inspect project structure and configuration files.
  - [ ] Step 1.2: Run test suite to ensure clean baseline.
  - [ ] Step 1.3: Document any existing failures or prerequisites.

### Phase 2: Foundation & Interfaces
- **Goal**: Establish types, schemas, and scaffolding without changing behavior.
- **Definition of Done**: New types compile, no regressions in existing codebase.
- **Baby Steps**:
  - [ ] Step 2.1: Define data types / schemas / contracts in isolation.
  - [ ] Step 2.2: Add unit test stubs targeting the new contract.
  - [ ] Step 2.3: Verify compiler / linter / type checker passes.

### Phase 3: Core Implementation (Minimal Working Slice)
- **Goal**: Implement the simplest end-to-end happy path.
- **Definition of Done**: Happy path test passes.
- **Baby Steps**:
  - [ ] Step 3.1: Implement core business logic function / method.
  - [ ] Step 3.2: Verify logic with a targeted unit test.
  - [ ] Step 3.3: Wire minimal integration point.
  - [ ] Step 3.4: Verify end-to-end happy path.

### Phase 4: Edge Cases & Resilience
- **Goal**: Handle error states, nulls, boundaries, and validation.
- **Definition of Done**: All edge case tests pass, graceful error handling verified.
- **Baby Steps**:
  - [ ] Step 4.1: Add input validation and constraint checks.
  - [ ] Step 4.2: Add error-handling branches and logging.
  - [ ] Step 4.3: Write edge-case tests (empty inputs, invalid formats, timeouts).
  - [ ] Step 4.4: Verify all edge case tests pass.

### Phase 5: Full Integration & Polish
- **Goal**: Clean up, run full regression suite, and verify production readiness.
- **Definition of Done**: Full test suite passes, zero linter warnings, clean git diff.
- **Baby Steps**:
  - [ ] Step 5.1: Remove temporary logs, comments, and debug statements.
  - [ ] Step 5.2: Run linter, formatter, and full test suite.
  - [ ] Step 5.3: Review git diff against baseline.
  - [ ] Step 5.4: Provide final summary to user.
```
