#!/bin/bash
set -e

echo "Installing k8sgpt..."

brew tap k8sgpt-ai/k8sgpt || true
brew install k8sgpt || true

echo "Setting up OpenAI backend..."

k8sgpt auth add --backend openai --model gpt-4o

echo "Done"
