# CloudTrail Notes

## Useful event fields
- `eventTime`
- `eventSource`
- `eventName`
- `awsRegion`
- `sourceIPAddress`
- `userAgent`
- `userIdentity`
- `requestParameters`
- `responseElements`
- `errorCode` / `errorMessage`
- `resources`
- `recipientAccountId`

## Investigation questions
1. What action occurred, and when?
2. Which principal or session initiated it?
3. From what source and client?
4. Which account, region, and resource were involved?
5. Was it successful or denied?
6. What related events establish the timeline?
7. Are data events or service-specific logs needed?
8. What conclusions are supported, and what remains unknown?

Use synthetic or sanitized events in this repository.
