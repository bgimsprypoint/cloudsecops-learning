# Prowler Notes

## Before scanning
- Confirm provider and scan mode (live cloud vs IaC).
- Check current installation and usage docs.
- Record tool version, inputs, and exclusions.
- Do not put cloud credentials in scripts or Git.
- For live scans, confirm authorization, account scope, region scope, and cost expectations.

## Finding triage
For each finding, record:
- Finding ID and title
- Resource or IaC file/line
- Severity and rationale
- Exposure and likely impact
- Confidence and evidence
- Owner and remediation
- Validation method
- Exception details and expiry, if applicable

## Report caveat
A clean IaC scan does not prove a live account is secure. A live-account assessment does not prove that runtime detections work. Document coverage and blind spots.
