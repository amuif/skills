# Example: Baby-Steps Phased Walkthrough

This example demonstrates how an agent applies the Baby Steps skill during a real task: adding JWT authentication middleware to an API endpoint.

---

### Phase Plan Created at Start
```
Phase 1: Environment & Baseline Verification
Phase 2: Auth Helper & Token Decoder
Phase 3: Middleware Implementation
Phase 4: Route Protection & Integration
Phase 5: Regression & Cleanup
```

---

### Step-by-Step Execution Transcript

#### Step 1.1: Verify Baseline Test Suite
- **Declare**: `⏳ [Phase 1/5 | Step 1.1] Verify baseline test suite passes`
- **Execute**: Run `npm test`
- **Verify**: Output: `14 passed, 0 failed`
- **Checkpoint**: `✅ [Phase 1/5 | Step 1.1] Baseline clean. Ready for Phase 2.`

#### Step 2.1: Write Token Validator Unit Test Stub
- **Declare**: `⏳ [Phase 2/5 | Step 2.1] Create test suite for verifyToken helper`
- **Execute**: Add `test/auth.test.ts` with test cases: valid token, expired token, malformed token.
- **Verify**: Run `npm test test/auth.test.ts` -> Fails as expected (`verifyToken is not defined`).
- **Checkpoint**: `✅ [Phase 2/5 | Step 2.1] Red test confirmed.`

#### Step 2.2: Implement `verifyToken` Helper
- **Declare**: `⏳ [Phase 2/5 | Step 2.2] Implement verifyToken in src/auth.ts`
- **Execute**: Write minimal `verifyToken(token: string)` function.
- **Verify**: Run `npm test test/auth.test.ts` -> All 3 tests pass.
- **Checkpoint**: `✅ [Phase 2/5 | Step 2.2] Verified token verification logic.`

#### Step 3.1: Middleware Contract Test
- **Declare**: `⏳ [Phase 3/5 | Step 3.1] Add test for requireAuth Express middleware`
- **Execute**: Add test asserting 401 when Authorization header missing.
- **Verify**: Run test -> Fails with 404 (middleware not attached).
- **Checkpoint**: `✅ [Phase 3/5 | Step 3.1] Failure mode verified.`

#### Step 3.2: Implement Middleware
- **Declare**: `⏳ [Phase 3/5 | Step 3.2] Implement requireAuth middleware in src/middleware.ts`
- **Execute**: Add `requireAuth(req, res, next)` using `verifyToken`.
- **Verify**: Run middleware unit test -> Passes.
- **Checkpoint**: `✅ [Phase 3/5 | Step 3.2] Middleware verified.`

#### Step 4.1: Protect Target Route
- **Declare**: `⏳ [Phase 4/5 | Step 4.1] Attach requireAuth to /api/profile route`
- **Execute**: Edit `src/routes.ts` to add `requireAuth` to `/api/profile`.
- **Verify**: Run end-to-end integration test.
- **Checkpoint**: `✅ [Phase 4/5 | Step 4.1] Route protection verified.`

#### Step 5.1: Full Regression Check
- **Declare**: `⏳ [Phase 5/5 | Step 5.1] Run full test suite and linter`
- **Execute**: Run `npm test` and `npm run lint`.
- **Verify**: All 18 tests pass, 0 lint warnings.
- **Checkpoint**: `🎯 [Phase 5/5 Complete] Task finished with zero regressions.`
