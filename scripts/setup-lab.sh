#!/usr/bin/env bash
set -euo pipefail

# Safe starter helper. It only prints environment information and creates no AWS resources.
echo "CloudSecOps local lab — safe setup check"
echo "Date: $(date -Is 2>/dev/null || date)"
echo "OS:"
if [[ -r /etc/os-release ]]; then
  . /etc/os-release
  printf '  %s %s\n' "${NAME:-Linux}" "${VERSION_ID:-}"
else
  uname -a
fi

for tool in git python3 terraform aws docker podman; do
  if command -v "$tool" >/dev/null 2>&1; then
    printf '%-10s %s\n' "$tool" "$(command -v "$tool")"
  else
    printf '%-10s %s\n' "$tool" "not installed (optional)"
  fi
done

echo
echo "No packages were installed, no credentials were read, and no AWS API calls were made."
echo "Review README.md and learning-plan.md to choose your first exercise."
