# Project 23 - IAM Role Based Access

## Objective

Implement secure resource access using IAM Roles attached to Amazon EC2 instances and verify Amazon S3 access without using stored AWS credentials.

## Services Used

- AWS IAM
- Amazon EC2
- Amazon S3
- AWS CLI

## Project Overview

This project demonstrates role-based access control in AWS by attaching an IAM Instance Profile to an EC2 instance. The attached IAM Role grants Amazon S3 permissions, allowing secure access to S3 resources through AWS CLI.

## Activities Performed

- Identified an EC2 instance with an IAM Instance Profile attached.
- Verified IAM Role association with the EC2 instance.
- Verified S3 permissions assigned to the IAM Role.
- Tested Amazon S3 access using AWS CLI.
- Confirmed resource access through role-based permissions.

## IAM Configuration

### Instance Profile

```text
Project23-EC2-S3-Profile
```

### IAM Role

```text
Project23-EC2-S3-Role
```

## Attached Policies

```text
AmazonSSMManagedInstanceCore
AmazonS3ReadOnlyAccess
Project23-S3-Access-Policy
```

## Validation

### Verify IAM Role Attachment

```bash
aws ec2 describe-instances \
  --instance-ids i-040e2813aacf605a3 \
  --query "Reservations[].Instances[].[InstanceId,IamInstanceProfile.Arn]" \
  --output table
```

### Verify Role Permissions

```bash
aws iam list-attached-role-policies \
  --role-name Project23-EC2-S3-Role
```

Output confirmed that the role contains:

```text
AmazonS3ReadOnlyAccess
Project23-S3-Access-Policy
```

### Verify S3 Access

```bash
aws s3api head-bucket \
  --bucket parth-project22-log-archive
```

Output:

```json
{
    "BucketArn": "arn:aws:s3:::parth-project22-log-archive",
    "BucketRegion": "ap-south-1",
    "AccessPointAlias": false
}
```

The successful response confirms access to the S3 bucket using IAM role-based permissions.

## Screenshots

- 1.EC2-IAM-Role-Attached.png
- 2.Role-S3-Permissions.png
- 3.S3-Access-Test.png

## Deliverable

### CLI Test Output

Successfully verified Amazon S3 access through an IAM Role attached to an EC2 instance.

## Result

Successfully implemented and verified IAM Role Based Access by confirming:

- IAM Role attached to EC2
- S3 permissions assigned to the role
- Secure Amazon S3 access through AWS CLI
- No dependency on stored access keys or secret keys
