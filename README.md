# k8sgpt-ops

AI-powered Kubernetes diagnostics using k8sgpt integrated with CI/CD and cluster workflows.

## What this does
- Detects Kubernetes issues (CrashLoopBackOff, ImagePullBackOff, etc.)
- Provides AI-based root cause analysis
- Outputs structured JSON for automation
- Integrates with CI/CD and cron jobs

## Quick Start

```bash
brew install k8sgpt
k8sgpt auth add --backend openai --model gpt-4o
./scripts/analyze.sh
