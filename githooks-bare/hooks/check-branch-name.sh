#!/bin/bash

branch=$(git rev-parse --abbrev-ref HEAD)

if [[ ! "$branch" =~ SRE-[0-9]+ ]]; then
  echo "❌ Branch name must contain a Jira ID (e.g., SRE-123)"
  exit 1
fi
