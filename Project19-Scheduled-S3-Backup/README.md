# Project 19 - Scheduled S3 Backup

## Objective

Automate file backups to Amazon S3 using a Linux cron job.

## Services Used

- Amazon S3
- AWS CLI
- Linux Cron

## Activities Performed

- Created an S3 bucket.
- Created a backup script.
- Uploaded log files to Amazon S3.
- Configured a scheduled cron job.
- Verified backup files in S3.

## Backup Script

```bash
#!/bin/bash

aws s3 cp logs/app.log s3://parth-project19-backup/
```

## Cron Schedule

```cron
*/5 * * * * /home/clouduser/aws-projects/Project19-Scheduled-S3-Backup/backup.sh
```

## Validation

Verified successful backup using:

```bash
aws s3 ls s3://parth-project19-backup
```

## Result

Successfully automated file backups to Amazon S3 using a Linux cron job and verified backup storage in the S3 bucket.
