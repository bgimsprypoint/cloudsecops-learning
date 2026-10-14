# IAM Notes

## Questions to answer
- Who or what is the principal?
- What action is requested on which resource?
- Which identity-based and resource-based policies apply?
- Are there explicit denies, permissions boundaries, session policies, or organization guardrails?
- Is the request made with temporary credentials? Which role session?
- What evidence supports the conclusion?

## Investigation checklist
- [ ] Identify principal ARN and session name
- [ ] Identify action and resource
- [ ] Check explicit deny before assuming an allow is effective
- [ ] Check permission boundary and session policy
- [ ] Check SCP/RCP where applicable
- [ ] Check resource policy and cross-account trust
- [ ] Check condition keys, tags, source identity, MFA and network conditions
- [ ] State uncertainty and missing evidence
