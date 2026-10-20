# Threat Modeling — Week 1 Guide

This README explains the purpose of `threat-model.md`, how to read it, and how to use it as a learning exercise in the CloudSecOps learning plan.

## What is threat modeling?

Threat modeling is a structured way to reason about how a system could be attacked before you deploy it or make changes to it.

The goal is to answer:

1. What are we building and what matters?
2. What could go wrong?
3. How could an attacker cause it to go wrong?
4. What controls would reduce the risk?
5. How would we verify that those controls work?

Threat modeling is not the same as a penetration test. A threat model identifies plausible attack paths and plans mitigations. A penetration test or control test gathers evidence about a real implementation.

## What is in `threat-model.md`?

Read the document in this order:

1. **Scope and assumptions** — Defines what system is being considered and what is hypothetical.
2. **Architecture and trust boundaries** — Shows the major components and where data or permissions cross between trust zones.
3. **Assets and security objectives** — Identifies what needs protection, such as customer records, credentials, availability, and audit logs.
4. **Threat identification (STRIDE)** — Organizes possible threats into six categories:
   - **S — Spoofing:** pretending to be another identity.
   - **T — Tampering:** making unauthorized changes.
   - **R — Repudiation:** being able to deny an action because evidence is missing or inadequate.
   - **I — Information Disclosure:** exposing data to unauthorized parties.
   - **D — Denial of Service:** disrupting availability.
   - **E — Elevation of Privilege:** obtaining permissions beyond those intended.
5. **Risk prioritization** — Estimates likelihood and impact so the most important issues receive attention first.
6. **Mitigations** — Proposes preventive controls that reduce the chance of an attack or limit its impact.
7. **Detection and validation** — Describes the evidence or tests that could show whether a control works.
8. **Limitations and follow-up** — Makes clear what has not been verified and what should happen next.

## How to use this in the learning plan

Treat the example as a reference, not as proof that a real AWS environment has these problems.

For your Week 1 exercise:

- Read the example once from beginning to end.
- Choose one threat, such as excessive IAM permissions.
- Explain in your own words the asset, attack path, impact, mitigation, and validation method.
- Check whether each proposed control actually addresses the stated threat.
- Add or change a threat only when you can explain why it is plausible.
- Keep assumptions separate from verified facts.
- Commit the document to Git when you are satisfied with your first pass.

You do not need an AWS account or deployed resources to complete this initial exercise. You can document validation steps that would be performed later, but label them as planned tests rather than tests you have run.

## A useful way to write each threat

For each threat, try to complete this sentence:

> If **[threat actor or event]** can exploit **[weakness or condition]**, they may **[attack action]**, causing **[business or security impact]**. We will reduce the risk by **[mitigation]** and validate it by **[specific check or test]**.

Example:

> If an attacker compromises the application, they may abuse an application IAM role with broad S3 permissions to read unrelated customer data. Restrict the role to the required buckets and actions. Validate the policy with a review and tests confirming that required access succeeds while unrelated access is denied.

This is more useful than writing only “use least privilege,” because it connects the weakness to an attack path, impact, control, and test.

## Risk ratings: use judgment and state assumptions

The example uses qualitative likelihood and impact ratings. These are not measured facts. In a real assessment, ratings should be informed by exposure, exploitability, existing controls, business impact, and the organization's risk criteria.

Do not claim a risk is fixed merely because a mitigation is proposed. Mark it as **proposed** until it has been implemented and validated. After validation, record the evidence and any remaining risk.

## Suggested Week 1 completion checklist

- [ ] I can explain the system's scope and assumptions.
- [ ] I can identify its important assets.
- [ ] I can explain the trust boundaries in the diagram.
- [ ] I can describe at least five plausible threats.
- [ ] I can use STRIDE where it helps classify a threat.
- [ ] I can explain the impact and prioritization of each major threat.
- [ ] I can propose a relevant preventive or detective control.
- [ ] I can name a specific validation step for each important control.
- [ ] I have clearly marked anything that is hypothetical or unverified.

## Suggested references

- Microsoft Learn — Threat Modeling Security Fundamentals: https://learn.microsoft.com/en-us/training/paths/tm-threat-modeling-fundamentals/
- OWASP Threat Modeling: https://owasp.org/www-community/Threat_Modeling
- AWS Well-Architected Framework — Security Pillar: https://docs.aws.amazon.com/wellarchitected/latest/security-pillar/welcome.html

## Reminder

A good threat model is a living engineering document, not a one-time essay. Update it when the architecture, identities, data flows, dependencies, or security controls change.
