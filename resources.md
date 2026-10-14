# Resource Links

Check current official docs before installing tools or relying on version-specific behavior.

## AWS security and architecture
- AWS Well-Architected Security Pillar: https://docs.aws.amazon.com/wellarchitected/latest/security-pillar/welcome.html
- IAM User Guide: https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html
- IAM policy evaluation logic: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html
- AWS STS: https://docs.aws.amazon.com/STS/latest/APIReference/welcome.html
- CloudTrail: https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html
- CloudWatch Logs Insights: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html
- VPC Flow Logs: https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html
- AWS Organizations: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html
- Service control policies: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps.html
- AWS Config: https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html
- AWS Security Hub: https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html
- Amazon GuardDuty: https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html
- AWS Security Services Best Practices (pre-deployment through post-enablement guidance for GuardDuty, Security Hub, Inspector, Macie, Detective, Security Lake, WAF, Network Firewall, DNS Firewall): https://aws.github.io/aws-security-services-best-practices/
- EventBridge: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html

## AWS Landing Zone Accelerator
- AWS Solutions Library search: https://aws.amazon.com/solutions/
- LZA source repository: https://github.com/awslabs/landing-zone-accelerator-on-aws
- Read the current repository documentation, prerequisites, supported regions, release notes, and deployment guidance. Do not assume an emulator can deploy or validate LZA.

## Prowler and IaC scanning
- Prowler: https://github.com/prowler-cloud/prowler
- Prowler documentation: https://docs.prowler.com/
- Checkov: https://github.com/bridgecrewio/checkov
- Trivy: https://github.com/aquasecurity/trivy
- Conftest: https://github.com/open-policy-agent/conftest

## Terraform and observability
- Terraform language docs: https://developer.hashicorp.com/terraform/language
- Terraform CLI docs: https://developer.hashicorp.com/terraform/cli
- OpenTelemetry docs: https://opentelemetry.io/docs/
- CloudWatch Application Signals: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Application-Signals.html

## Local emulator
- LocalStack docs: https://docs.localstack.cloud/
- Floci project: search the current project documentation/repository for supported services, API compatibility, setup, and current maintenance status before adopting it.

## Good habits
- Prefer official documentation for service behavior and threat-model assumptions.
- Use community examples as starting points, not authoritative security policy.
- Record tool versions, commands, and relevant limitations in each lab.
