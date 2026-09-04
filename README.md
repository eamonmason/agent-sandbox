# agent-sandbox

Throwaway repo for exercising the hardened `eamonmason/ai-workflows` engine
before any real caller adopts it.

`issue_comment` and `issues` workflows are only ever read from the default
branch, so the caller-side `if:` conditions cannot be tested from a PR branch in
a real repo. Hence this repo.

**Delete me when the hardening run is signed off.**
