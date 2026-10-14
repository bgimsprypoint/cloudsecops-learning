# AWS Security Services Best Practices (SSBP) Notes

Guide: https://aws.github.io/aws-security-services-best-practices/

The guide covers what to decide before enabling each AWS security service and what to do after enablement. None of these services run in a local emulator, so treat each chapter as reading plus a design artifact unless an approved AWS sandbox is available.

## Chapter-to-week map

| SSBP chapter | Week | Artifact |
|---|---|---|
| Network Security Fundamentals | 14 | Network trust-boundary diagram |
| AWS Network Firewall | 15 | Inspection-architecture diagram |
| Amazon Route 53 Resolver DNS Firewall | 15 | Inspection-architecture diagram |
| AWS Network Security Manager | 15 | Inspection-architecture diagram |
| AWS Security Hub (incl. CSPM) | 22 | Finding lifecycle diagram and delegated-admin/aggregation-region decision note |
| Amazon Inspector | 23, 43 | Coverage matrix row; Trivy vs Inspector comparison |
| Amazon Macie | 23 | Coverage matrix row |
| Amazon GuardDuty | 26 | Coverage note and suppression-rule design |
| Amazon Detective | 32 | Tabletop report |
| Amazon Security Lake | 35 | Log-flow and access diagram |
| AWS Security Agent | 41 | Pipeline flow diagram |
| AWS WAF | 44 | Web ACL design |
| Certificate Services (ACM, AWS Private CA) | 44 | Certificate lifecycle note |

Week 40 (control ownership matrix) pulls the delegated-admin and org-wide auto-enable decisions from every chapter into one table.

## Per-chapter reading checklist

For each chapter, record:
- Prerequisites and dependencies on other services (for example, AWS Config for Security Hub CSPM controls)
- Delegated administrator account and the org-wide auto-enable behavior
- Regional scope and any aggregation or home-region choice
- Cost drivers and how to estimate them before enabling
- Recommended post-enablement tuning (suppression, automation rules, exclusions)
- Where findings or logs go, and who owns triage
- What the local lab cannot prove about this service
