#!/bin/bash
set -e

NAMESPACE="k8sgpt"
OUTPUT_FILE="report.json"

k8sgpt analyze \
  --namespace $NAMESPACE \
  --filter Pod \
  --explain \
  --output json > $OUTPUT_FILE

ISSUES=$(jq '.problems' $OUTPUT_FILE)

echo "Issues detected: $ISSUES"

if [ "$ISSUES" -gt 0 ]; then
  echo "---- Issue Details ----"
  jq -r '.results[].error[].Text' $OUTPUT_FILE
  exit 1
fi
