# Lab 02 — Terraform Security

## Objective
Practice reviewing infrastructure definitions without deploying them.

## Tasks
1. Create a small Terraform fixture in a separate working directory.
2. Include deliberately insecure examples only as inert test fixtures (for example, a public ingress rule or unencrypted storage configuration).
3. Run an IaC scanner supported by your chosen tool version.
4. Explain each finding and its impact.
5. Remediate the fixture and rerun the scan.
6. Save a before/after summary.

## Safety
Do not run `terraform apply` for this lab. Keep examples small and clearly marked as intentionally insecure.
