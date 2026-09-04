#!/usr/bin/env bash
# Trivial gate for sandbox testing.
# Exits non-zero when the file FAIL_ME exists, so the fail-closed path can be
# exercised on demand without touching the workflow.
set -euo pipefail
cd "$(dirname "$0")/.."
if [ -f FAIL_ME ]; then
  echo "verify: FAIL_ME present, failing on purpose"
  echo "simulated lint error: line 1: undefined name 'foo'"
  exit 1
fi
echo "verify: ok"
