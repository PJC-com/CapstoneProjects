## Verification Notes

The AWS training environment used for this project had restricted IAM permissions.

While the IAM user was successfully created through Terraform, certain IAM console operations such as `iam:ListPolicies` were restricted for the logged-in account. Because of these restrictions, validation was performed using Terraform outputs and AWS CLI commands instead of relying solely on the IAM console.

### Validation Commands

Verify IAM user creation:
Verify Terraform-managed resources:
```bash
terraform output
```
Verify Terraform resources in state:
```bash
terraform state list
```

### Result 

Successfully created the IAM user project4-s3-reader using Terraform and assigned the required 
S3 read-only access policy through Terraform configuration. User creation was verified using AWS CLI 
and Terraform outputs.

## Resources Created 
- IAM User: project4-s3-reader 
- S3 Read-Only Policy Attachment
