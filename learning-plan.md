# 52-Week AWS CloudSecOps Learning Plan

**Time budget:** 1 hour/day, Monday–Friday; 52 weeks; approximately 260 hours.  
**Approach:** local-first and portfolio-oriented. Aim to produce one small artifact each week.  
**SSBP:** the AWS Security Services Best Practices guide, https://aws.github.io/aws-security-services-best-practices/. Each of its chapters is assigned to a week below; `notes/aws-security-services-best-practices.md` maps them.

## Phase 1 — Foundations and a safe local workflow (Weeks 1–8)

| Week | Focus | Hands-on deliverable |
|---|---|---|
| 1 | CloudSecOps workflow, threat modeling, shared responsibility | `labs/01-local-environment/threat-model.md` |
| 2 | IAM users, roles, policies, policy evaluation, least privilege | IAM policy examples and a short review checklist |
| 3 | STS, temporary credentials, role assumption, identity boundaries | Diagram of a role-assumption flow |
| 4 | AWS CLI profiles, credential hygiene, regions, safe command habits | A credential-free CLI workflow note |
| 5 | Terraform state, providers, modules, plan vs apply | Tiny Terraform configuration with no deployment |
| 6 | Terraform security scanning and common misconfigurations | Scan report and remediated sample |
| 7 | Local emulator evaluation: supported services, endpoints, limitations | Emulator capability matrix |
| 8 | Reproducible development environment and Git hygiene | Documented local setup and first milestone review |

**Checkpoint:** You can explain IAM evaluation, temporary credentials, Terraform plan/apply, and what your local emulator cannot prove.

## Phase 2 — Identity, audit logs, and investigations (Weeks 9–16)

| Week | Focus | Hands-on deliverable |
|---|---|---|
| 9 | CloudTrail events, event structure, management vs data events | Annotated sample event |
| 10 | CloudTrail event fields: actor, source IP, user agent, resources | Event triage worksheet |
| 11 | CloudTrail Lake / Athena-style query concepts | Five investigation questions and sample queries |
| 12 | CloudWatch Logs and Logs Insights query patterns | Query cookbook using synthetic events |
| 13 | IAM investigation scenarios: denied access, unexpected role assumption | Two short investigation reports |
| 14 | VPC, subnet, route table, security group, NACL, endpoints; read the SSBP Network Security Fundamentals chapter | Network trust-boundary diagram |
| 15 | VPC Flow Logs: accept/reject, traffic patterns, limitations; AWS Network Firewall, Route 53 Resolver DNS Firewall, and Network Security Manager placement and logs; read the SSBP chapters | Synthetic flow-log analysis and inspection-architecture diagram |
| 16 | Incident timeline, evidence handling, escalation | One-page investigation runbook |

**Checkpoint:** You can turn an event into a timeline, identify what evidence is missing, and avoid claiming more than the logs prove.

## Phase 3 — Prowler and configuration assurance (Weeks 17–24)

| Week | Focus | Hands-on deliverable |
|---|---|---|
| 17 | Prowler purpose, providers, outputs, severity, compliance mappings | Prowler overview note |
| 18 | Run Prowler against IaC / Terraform where supported | Baseline scan output and findings summary |
| 19 | Triage findings by impact, exploitability, exposure, and ownership | Prioritized findings register |
| 20 | Remediation vs exception: evidence, expiry, compensating controls | One remediation ticket and one exception template |
| 21 | AWS Config concepts, configuration items, rules, conformance packs | Control-to-evidence mapping |
| 22 | Security Hub and Security Hub CSPM: standards, findings aggregation, automation rules, workflow; read the SSBP Security Hub chapter | Finding lifecycle diagram and delegated-admin/aggregation-region decision note |
| 23 | Compare Prowler, Config, Security Hub, Inspector, Macie, native service checks; read the SSBP Inspector and Macie chapters | Coverage and gap matrix |
| 24 | Repeat scan after remediating IaC examples | Before/after report and lessons learned |

**Checkpoint:** You can explain the difference between an IaC scan, a live-account posture assessment, and a centralized findings workflow.

## Phase 4 — Detection engineering (Weeks 25–32)

| Week | Focus | Hands-on deliverable |
|---|---|---|
| 25 | Detection lifecycle: hypothesis, telemetry, logic, test, tuning | Detection specification template |
| 26 | GuardDuty capabilities, protection plans, and data sources; what the emulator cannot test; read the SSBP GuardDuty chapter | GuardDuty coverage note and suppression-rule design |
| 27 | Build detections from synthetic CloudTrail events | Detection logic and test fixtures |
| 28 | EventBridge patterns and routing concepts | Event pattern examples |
| 29 | CloudWatch alarms, metrics, log filters, alert quality | Alert design worksheet |
| 30 | False positives, suppression, severity, deduplication | Tuning notes for three sample alerts |
| 31 | OpenTelemetry basics, logs/metrics/traces, cardinality and cost | Observability diagram |
| 32 | Detection validation and tabletop exercise, using Detective-style entity pivots; read the SSBP Detective chapter | Tabletop report with gaps and follow-ups |

**Checkpoint:** You can state the exact event pattern a detection depends on, how to test it, and what blind spots remain.

## Phase 5 — Multi-account security and LZA (Weeks 33–40)

| Week | Focus | Hands-on deliverable |
|---|---|---|
| 33 | AWS Organizations, accounts, OUs, delegated administration | Organization and account-boundary diagram |
| 34 | SCPs: guardrails, explicit denies, limits and common pitfalls | Example SCPs with test cases; do not deploy |
| 35 | Centralized logging, security account patterns, and Amazon Security Lake (OCSF, sources, subscribers); read the SSBP Security Lake chapter | Log-flow and access diagram |
| 36 | Identity Center / federation and least-privilege operations | Access-path diagram |
| 37 | LZA architecture: accounts, OUs, security tooling, logging | Annotated LZA architecture sketch |
| 38 | LZA configuration-as-code, pipeline, deployment lifecycle | Change-flow diagram and review checklist |
| 39 | LZA operations: drift, upgrades, failed deployments, rollback planning | Operations runbook |
| 40 | Security controls in a multi-account environment; delegated administrator and org-wide auto-enable for each security service | Control ownership matrix and gap review |

**Checkpoint:** You can discuss LZA as a governed multi-account foundation, distinguish organization-wide guardrails from account-level controls, and explain operational risks. Do not attempt an LZA deployment in a local emulator.

## Phase 6 — Secure delivery and remediation (Weeks 41–46)

| Week | Focus | Hands-on deliverable |
|---|---|---|
| 41 | CI security gates and pull-request feedback; AWS Security Agent for design review and code review; read the SSBP Security Agent chapter | Pipeline flow diagram |
| 42 | Terraform scanning with Prowler/Checkov or comparable tools; policy-as-code with OPA/Conftest | CI-style scan report and one Conftest policy with pass/fail fixtures |
| 43 | Container image scanning with Trivy compared with Amazon Inspector (ECR, Lambda, EC2 scanning) | Trivy scan of a sample image and a Trivy vs Inspector comparison note |
| 44 | Edge protection: AWS WAF (managed rules, rate-based rules, logging) and certificates (ACM, AWS Private CA); read the SSBP WAF and Certificate Services chapters | Web ACL design and certificate lifecycle note |
| 45 | Safe automated remediation design, approvals, idempotency | Remediation decision tree |
| 46 | Change control, rollback, auditability, and exceptions | Remediation runbook and review checklist |

**Checkpoint:** You can prevent common insecure changes before deployment and explain why auto-remediation needs guardrails.

## Phase 7 — Capstone and consolidation (Weeks 47–52)

| Week | Focus | Hands-on deliverable |
|---|---|---|
| 47 | Define a synthetic multi-account security scenario and threat model | Capstone scope and assumptions |
| 48 | Build a small insecure Terraform fixture and scan it | Findings report with severity and evidence |
| 49 | Remediate the fixture and compare results | Before/after diff and scan summary |
| 50 | Create synthetic audit events and investigate a scenario | Timeline, detection, and incident report |
| 51 | Connect controls to LZA concepts and write operational runbooks | Control mapping and architecture note |
| 52 | Review, polish, and present the portfolio | Final README, lessons learned, and next-step backlog |

## Capstone acceptance criteria

- No real AWS resources required.
- Includes an intentionally insecure but non-deployed Terraform fixture.
- Includes a scanner output, triage rationale, and before/after remediation.
- Includes synthetic audit events and a reproducible investigation.
- Includes a multi-account/LZA architecture explanation.
- Clearly labels what was simulated and what still requires validation in AWS.
- Contains no credentials or sensitive employer data.

## Optional real-AWS validation

Only if your employer provides an approved sandbox:
1. Confirm account, region, allowed services, and budget.
2. Use temporary credentials and least privilege.
3. Prefer read-only assessment first.
4. Record the exact resources expected to be created.
5. Set a time limit and cleanup owner.
6. Verify cleanup and billing after the exercise.

A local emulator is not a substitute for this validation; it is a safe practice environment.
