# Project 22 - S3 Log Archive with Lifecycle

## Objective

Reduce storage costs by archiving log files in Amazon S3 and applying lifecycle management policies.

## Services Used

- Amazon S3
- AWS CLI

## Project Overview

This project demonstrates log archival in Amazon S3 and automated lifecycle management using S3 Lifecycle Policies.

## Activities Performed

- Created an Amazon S3 bucket.
- Generated sample application logs.
- Uploaded log files to Amazon S3.
- Created a lifecycle policy.
- Applied lifecycle expiration rules.
- Verified lifecycle configuration.

## S3 Bucket

```text
parth-project22-log-archive
```

## Lifecycle Rule

```text
Project22LifecycleRule
```

### Status

```text
Enabled
```

### Expiration

```text
30 Days
```

## Validation

Uploaded log files:

```text
application.log
```

Applied lifecycle configuration:

```text
Expiration after 30 days
```

Verified lifecycle policy using:

```bash
aws s3api get-bucket-lifecycle-configuration \
--bucket parth-project22-log-archive
```

## Screenshots

- 1.S3-Bucket-Created.png
- 2.Log-Uploaded-To-S3.png
- 3.Lifecycle-Policy-Applied.png

## Deliverable

### S3 Rule Screenshot

Lifecycle management policy successfully configured and verified.

## Result

Successfully archived log files to Amazon S3 and automated retention management using S3 Lifecycle Policies.
