# AWS Landing Zone Accelerator (LZA) Notes

## Architecture topics
- AWS Organizations, OUs, accounts, and account vending
- Centralized logging and security tooling accounts
- IAM Identity Center / federation and administrative access
- SCP guardrails and delegated administration
- CloudTrail, AWS Config, Security Hub, and GuardDuty integration
- Network topology and account boundaries
- Configuration-as-code, pipeline stages, drift, upgrades, and rollback
- Exceptions, control ownership, and evidence collection

## Operational review checklist
- [ ] Is the intended account/OU scope clear?
- [ ] Are changes reviewed and version-controlled?
- [ ] Are prerequisites and supported versions/regions checked?
- [ ] Is the deployment pipeline healthy?
- [ ] Are failures and partial deployments observable?
- [ ] Is rollback or forward-fix documented?
- [ ] Are security exceptions approved and time-bounded?
- [ ] Are control owners and evidence sources defined?

Do not attempt a real LZA deployment without an approved AWS organization, explicit authorization, and an operations plan. Local emulators are not a faithful LZA test environment.
