# AWS CloudSecOps Learning Lab

A one-year, local-first learning workspace for AWS CloudSecOps, with emphasis on multi-account security, AWS Landing Zone Accelerator (LZA), Prowler, detection engineering, and incident response.

## Study cadence

- **Schedule:** Monday–Friday, one hour per day
- **Duration:** 52 weeks (about 260 hours)
- **Method:** roughly 70% hands-on, 30% reading/design/review
- **Safety:** begin locally; do not deploy paid AWS resources without explicit approval and a budget.

## Important limitations

Local AWS emulators implement only subsets of AWS APIs. They are useful for practicing CLI workflows, Terraform structure, and basic service interactions, but they do **not** reproduce AWS Organizations, LZA, Security Hub, GuardDuty, or all IAM/security behavior faithfully. Treat emulator results as practice, not proof that a control works in AWS.

Use Prowler's Infrastructure-as-Code scanning where possible to review Terraform without creating AWS resources. If an employer later provides an approved sandbox, validate cloud-specific exercises there with a cost limit and cleanup plan.

## Repository map

- `learning-plan.md` — the 52-week roadmap
- `progress.md` — weekly checkboxes
- `resources.md` — official docs and project links
- `notes/` — concise topic notes and prompts; `notes/hands-on-workshops.md` maps workshops and labs to each week
- `labs/` — hands-on exercises and deliverables
- `scripts/setup-lab.sh` — safe starter helper; it does not create AWS resources

## Suggested weekly rhythm

| Day | One-hour focus |
|---|---|
| Monday | Learn one concept and take notes |
| Tuesday | Build or inspect a small example |
| Wednesday | Test, query, or scan it |
| Thursday | Investigate a failure/finding and document evidence |
| Friday | Write a short runbook, review the week, and commit changes |

## Safety rules

1. Never put credentials, tokens, account IDs, private logs, or sensitive employer configuration in this repository.
2. Prefer short-lived credentials and least privilege.
3. Do not run cloud deployment or destructive commands unless you have explicit authorization.
4. Before any real AWS lab, define a budget, allowed regions/services, expected resources, and cleanup procedure.
5. Pin tool versions for reproducibility and review official documentation for current installation instructions.
