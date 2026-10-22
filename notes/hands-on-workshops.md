# Hands-On Workshops and Labs

Workshops, labs, datasets, and CTFs mapped to the 52-week plan. Every link was checked on 2026-10-22: GitHub repos for archive status and last push, Workshop Studio links against the AWS catalog or official AWS pages that link them. Re-check a link before starting its week.

## Access model

Most AWS workshops need a real AWS account. The plan is local-first, so each entry is tagged with what it needs:

| Tag | Meaning |
|---|---|
| **B** | Browser only, no AWS account needed |
| **L** | Local only (Docker or CLI), no AWS account |
| **SB** | AWS Skill Builder subscription (sandbox accounts provided) |
| **EV** | Temporary account provided at an AWS event (Immersion Day, re:Inforce, workshop session) |
| **OWN** | Needs your own AWS account and costs money; follow the "Optional real-AWS validation" rules in `learning-plan.md` |
| **VULN** | Deploys deliberately vulnerable resources; use an isolated, disposable account only, never a work account |

If a week has no B/L option, keep the plan's design artifact as the deliverable and treat the workshop as reading. Its instructions and architecture diagrams are still useful even if you never deploy it.

Workshop Studio links are long; `WS/<id>` below means `https://catalog.us-east-1.prod.workshops.aws/workshops/<id>`.

## Phase 1 — Foundations (Weeks 1–8)

| Week | Resource | Access | Time | Use |
|---|---|---|---|---|
| 2–3 | [IAM Core Workshop](https://catalog.us-east-1.prod.workshops.aws/workshops/18b3622c-5d4c-45c9-9834-6a7091109072) (formerly IAM Immersion Day) | OWN (low cost) / EV | 6h | Policy types, roles, permission boundaries |
| 2 | [cloudsplaining](https://github.com/salesforce/cloudsplaining) | L | 1h | Run on exported sample policies; feed results into the review checklist |
| 3 | [pathfinding.cloud](https://github.com/DataDog/pathfinding.cloud) | B / L | 1h | IAM privilege-escalation path catalog; add one path to the role-assumption diagram |
| 4 | [Refining IAM Permissions Like A Pro](https://catalog.us-east-1.prod.workshops.aws/workshops/cf795253-d458-4381-8307-3900f43b3334) | OWN / EV | 2h | Least privilege with IAM Access Analyzer |
| 5 | [HashiCorp: Get Started – AWS](https://developer.hashicorp.com/terraform/tutorials/aws-get-started) | L (read/plan only) / OWN (apply) | 2h | Stop at `terraform plan` to stay local |
| 6 | [TerraGoat](https://github.com/bridgecrewio/terragoat) + [Checkov](https://github.com/bridgecrewio/checkov) / [Trivy misconfiguration](https://trivy.dev/docs/latest/scanner/misconfiguration/) | **L for scanning**; OWN + VULN if applied | 2h | Scan the vulnerable Terraform; **never** `terraform apply` it |
| 7 | [LocalStack tutorials](https://docs.localstack.cloud/aws/tutorials/) + [localstack-terraform-samples](https://github.com/localstack-samples/localstack-terraform-samples) | L, needs free account and auth token | 2–3h | IAM Policy Stream tutorial is a good fit; see the LocalStack note below |

> **LocalStack change (2026-03):** `localstack/localstack` on GitHub is archived, and the no-signup Community image is gone. There is now one image that requires an auth token, and the free Hobby tier is **non-commercial only**. Factor this into the Week 7 emulator capability matrix and confirm the licence fits how you use it. Alternatives such as moto are worth comparing in the same matrix (not verified here).

## Phase 2 — Audit and investigation (Weeks 9–16)

| Week | Resource | Access | Time | Use |
|---|---|---|---|---|
| 9–11 | [flaws2.cloud Defender track](http://flaws2.cloud/defender.htm) | B + CLI (uses the site's public training bucket, no cost to you) | 3–4h | Download real CloudTrail logs, query with jq and Athena, trace credential theft. The access keys on the page are intentional training keys |
| 10–12 | [Splunk attack_data](https://github.com/splunk/attack_data) (AWS CloudTrail datasets) | L | 1–2h | Synthetic-ish attack events for the triage worksheet and query cookbook |
| 11 | [AWS Security Analytics Bootstrap](https://github.com/awslabs/aws-security-analytics-bootstrap) | L (read the queries) / OWN (Athena, low cost) | 1h | Ready-made Athena queries for CloudTrail, VPC Flow Logs, Route 53 |
| 13 | [Integrating IAM Access Analyzer into a CI/CD Pipeline](https://catalog.us-east-1.prod.workshops.aws/workshops/fff8e490-f397-43d2-ae26-737a6dc4ac68) | OWN / EV | 2h | Policy validation as a pipeline check |
| 14 | [Approaches to layered security on Amazon VPC](https://catalog.us-east-1.prod.workshops.aws/workshops/04e6e6c8-c19b-40f9-8cc7-945669ca86b4) | OWN / EV | 2h | Security groups, NACLs, endpoints |
| 15 | [Securing AWS Network Traffic: Network Firewall & DNS Firewall](https://catalog.us-east-1.prod.workshops.aws/workshops/cbfa9f18-1175-4916-b7e7-e33dbbca9f9d) | OWN / EV | 2h | Network Firewall bills hourly; tear down the same day |
| 15 | [Securing your network perimeter through observability](https://catalog.us-east-1.prod.workshops.aws/workshops/ed8e8b88-c88c-4bdb-adbf-7c61bae45eb4) | OWN / EV | 2h | Flow logs and inspection logging |
| 16 | [aws-incident-response-playbooks](https://github.com/aws-samples/aws-incident-response-playbooks) | L (reading) | 1–2h | NIST 800-61r3-aligned playbooks; base the investigation runbook on one |
| 16 | [aws-customer-playbook-framework](https://github.com/aws-samples/aws-customer-playbook-framework) | L (reading) | 1h | Playbook structure and templates |

## Phase 3 — Prowler and posture (Weeks 17–24)

| Week | Resource | Access | Time | Use |
|---|---|---|---|---|
| 18, 24 | [Prowler](https://docs.prowler.com/) IaC scan on TerraGoat (from W6) | L | 1–2h | Baseline and before/after scans |
| 21 | [awslabs/aws-config-rules](https://github.com/awslabs/aws-config-rules) | L (reading) / OWN | 1h | Real rule examples for the control-to-evidence mapping |
| 21–23 | [Foundational Security, Identity, and Governance Workshop](https://catalog.us-east-1.prod.workshops.aws/workshops/05554d54-07cc-483e-b810-d69f7d99b2ab) | OWN / EV | 8h | Broad coverage; split across several days |
| 22 | [AWS Security Hub Workshop](https://catalog.workshops.aws/security-hub) | OWN / EV | 1.5h | Source repo last updated 2023-11, so it may predate Security Hub V2/CSPM; compare against SSBP |
| 23 | [Data Discovery and Classification with Amazon Macie](https://catalog.workshops.aws/data-discovery) | OWN (Macie 30-day trial) | 2h | Macie row of the coverage matrix |
| 23 | [Data security controls monitoring and response](https://catalog.us-east-1.prod.workshops.aws/workshops/4d952bbe-bc53-4616-b69f-b3375fde681f) | OWN | 2h | Data-protection controls and response |

No self-paced Workshop Studio workshop was found for Amazon Inspector, AWS Config conformance packs, or Prowler itself. For those weeks, use the docs and the W43 Trivy-vs-Inspector comparison.

## Phase 4 — Detection engineering (Weeks 25–32)

| Week | Resource | Access | Time | Use |
|---|---|---|---|---|
| 25, 27 | [Sigma CloudTrail rules](https://github.com/SigmaHQ/sigma/tree/master/rules/cloud/aws/cloudtrail) | L | 1–2h | Model detection specs on real rules; test against the attack_data events |
| 26 | [GuardDuty workshop](https://catalog.workshops.aws/guardduty) | OWN / EV | 2h | Protection plans and findings |
| 26 | [amazon-guardduty-tester](https://github.com/awslabs/amazon-guardduty-tester) | OWN (deploys test infrastructure) | 1–2h | Generates real findings; tear down afterward |
| 26, 32 | [Threat Detection and Response Workshop](https://catalog.workshops.aws/threat-detection-and-response) (GuardDuty + Detective) | OWN / EV | 4h | Also covers W32 Detective pivots |
| 27 | [Stratus Red Team](https://github.com/DataDog/stratus-red-team) + [Grimoire](https://github.com/DataDog/grimoire) | L (read technique docs) / OWN (detonates real attack techniques) | 2h | Grimoire pairs each detonation with its CloudTrail events, giving test fixtures |
| 29 | [Hands-on experience with Amazon CloudWatch](https://catalog.us-east-1.prod.workshops.aws/workshops/6b7b81cc-01fc-4ef8-8427-a03096dc5a81) | OWN / EV | 3h | Alarms, metric filters, Logs Insights |
| 31 | [OpenTelemetry Demo (Docker Compose)](https://opentelemetry.io/docs/demo/docker-deployment/) | L | 2h | Full OTel pipeline locally; trace a request and check cardinality |
| 31 | [One Observability Workshop](https://catalog.us-east-1.prod.workshops.aws/workshops/31676d37-bbe9-4992-9cd1-ceae13c5116c) | OWN (heavier deployment) / EV | 3h | ADOT, X-Ray, Application Signals on AWS |
| 32 | [AWS CloudSaga](https://github.com/awslabs/aws-cloudsaga) | L (scenario reading) / OWN (simulates events) | 1–2h | Tabletop scenarios |

## Phase 5 — Multi-account and LZA (Weeks 33–40)

| Week | Resource | Access | Time | Use |
|---|---|---|---|---|
| 34 | [service-control-policy-examples](https://github.com/aws-samples/service-control-policy-examples), [resource-control-policy-examples](https://github.com/aws-samples/resource-control-policy-examples) | L (reading) | 1–2h | Source material for example SCPs and test cases |
| 34–35 | [data-perimeter-policy-examples](https://github.com/aws-samples/data-perimeter-policy-examples) | L (reading) | 1h | Identity/resource/network perimeter patterns |
| 34–35 | [Data perimeter workshop](https://catalog.us-east-1.prod.workshops.aws/workshops/a11f0f32-cc23-4c95-b243-43c53bdc7177) (Level 400) and [Data perimeter in action](https://catalog.workshops.aws/data-perimeter-in-action) | OWN / EV | 2h each | Hands-on SCP/RCP/VPC endpoint policies |
| 36 | [Identity Center extensions](https://catalog.workshops.aws/ssoextensions) | OWN | 1–2h | Niche; optional |
| 37–38 | [Control Tower workshop](https://catalog.workshops.aws/control-tower) (includes AFT) | OWN, **needs a dedicated Organization** / EV | 4h+ | Read for the Control Tower vs LZA comparison |
| 37–39 | [Landing Zone Accelerator workshop](https://catalog.workshops.aws/landing-zone-accelerator) | OWN (multi-account, real cost) / EV | 4h+ | Read for architecture and change flow; deploy only at an AWS event |

## Phase 6 — Secure delivery (Weeks 41–46)

| Week | Resource | Access | Time | Use |
|---|---|---|---|---|
| 42 | [Conftest](https://www.conftest.dev/) | L | 2h | Write a Rego policy against the TerraGoat plan JSON |
| 43 | [Trivy](https://github.com/aquasecurity/trivy) | L | 1h | Image and filesystem scans |
| 44 | [Intro to AWS WAF](https://catalog.us-east-1.prod.workshops.aws/workshops/71c0a693-d5d8-4977-9e88-c1a7e52f51ac) | OWN / EV | 2h | Managed rules, rate-based rules, logging |
| 44 | [Strengthen your web application defenses with AWS WAF](https://catalog.us-east-1.prod.workshops.aws/workshops/81e94a4b-b47f-4acc-a284-914c4514d50f) (Level 300) | OWN / EV | 2h | Deeper follow-on |
| 45 | [Automated Security Response on AWS](https://github.com/aws-solutions/automated-security-response-on-aws) | L (read architecture) / OWN | 2h | Reference design for remediation approvals and idempotency |
| 45 | [Cloud Custodian](https://github.com/cloud-custodian/cloud-custodian) | L (policy authoring, dry run) / OWN | 1–2h | Policy-driven remediation; compare with ASR |

No workshop was found for ACM / AWS Private CA; use the SSBP Certificate Services chapter.

## Phase 7 — Capstone (Weeks 47–52)

Attacker-side labs show what the detections and controls from earlier phases need to catch.

| Week | Resource | Access | Time | Use |
|---|---|---|---|---|
| 47 | [flaws.cloud](http://flaws.cloud/) and [flaws2.cloud](http://flaws2.cloud/) (attacker track) | B | 2–4h each | Classic S3/IAM/metadata misconfigurations |
| 47–50 | [Wiz Cloud Security Championship](https://cloudsecuritychampionship.com/) | B, free signup | 1–2h each | Monthly challenges; skip the container/Kubernetes ones |
| 47–50 | [Pwned Labs](https://pwnedlabs.io/explore) | B, free account (30+ free scenarios) | 1–2h each | e.g. "Intro to AWS IAM Enumeration", "AWS S3 Enumeration Basics" |
| 48–50 | [CloudGoat](https://github.com/RhinoSecurityLabs/cloudgoat) + [Pacu](https://github.com/RhinoSecurityLabs/pacu) | OWN + VULN | 2h per scenario | Attack, then investigate your own CloudTrail; destroy right after |
| 48–50 | [iam-vulnerable](https://github.com/BishopFox/iam-vulnerable) | OWN + VULN (250+ IAM resources; IAM itself is free) | 2h | Privilege-escalation paths to detect |
| 48–50 | [AWSGoat](https://github.com/ine-labs/AWSGoat) | OWN + VULN (EC2/ECS, costs money) | 3h | Optional |
| 50 | AWS CIRT workshops: [Unauthorized IAM Credential Use](https://catalog.workshops.aws/aws-cirt-unauthorized-iam-credential-use), [Ransomware on S3](https://catalog.workshops.aws/aws-cirt-ransomware-simulation-and-detection), [Cryptominer](https://catalog.workshops.aws/aws-cirt-cryptominer-simulation-and-detection), [SSRF on IMDSv1](https://catalog.workshops.aws/aws-cirt-ssrf-imdsv1-simulation-and-detection), [IR preparedness toolkit](https://catalog.workshops.aws/aws-cirt-toolkit-for-incident-response-preparedness) | OWN (SSRF is VULN; Cryptominer costs compute) | 2h each | Simulate, detect, investigate. Published 2022, so check that the steps still match current consoles. The toolkit also fits W16 |

## AWS Skill Builder (subscription)

Skill Builder sandboxes are the best way to do AWS-side labs without your own account:
- **Cloud Quest: Security** role
- **AWS Jam Journeys:** Security: Identity Management and Access Control (Intermediate, Advanced); Security: Network and Infrastructure Security; Security: Data Protection and Data Encryption
- **Builder Labs:** search the catalog per week; individual lab names were not verified here because the catalog requires a login

## Retired or stale (do not use)

- `awssecworkshops.com`: dead; content moved to Workshop Studio.
- `wellarchitectedlabs.com`: security labs removed; only cost and WA Tool labs remain.
- `aws-samples/aws-waf-workshop`: redirects to an archived WAF Classic workshop (2021).
- `nccgroup/sadcloud`: no push since 2023-10, and includes EKS; TerraGoat covers the same need.
- `invictus-ir/aws_dataset`: no push since 2023-07; usable but small.
- Wiz Big IAM Challenge (`bigiamchallenge.com`): domain did not resolve on 2026-10-22.
