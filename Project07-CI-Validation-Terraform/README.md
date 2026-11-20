# Project 7 - CI Validation for Terraform

## Objective

Automate Terraform quality checks using GitHub Actions.

## Tasks Performed

- Created a GitHub Actions workflow
- Executed Terraform format checks
- Executed Terraform validation checks
- Integrated automated validation on push and pull requests

## Workflow Actions

- terraform fmt -check
- terraform init
- terraform validate

## Deliverables

- GitHub Actions pipeline
- Pipeline execution screenshot

## Workflow Badge

[![Terraform Validation](https://github.com/PJC-com/CapstoneProjects/actions/workflows/terraform-ci.yml/badge.svg)](https://github.com/PJC-com/CapstoneProjects/actions/workflows/terraform-ci.yml)

## Result

Successfully automated Terraform validation using GitHub Actions.

## CI Pipeline

GitHub Actions automatically performs:

```bash
terraform fmt -check
terraform init
terraform validate
```

whenever code is pushed to the repository.

The workflow ensures Terraform code quality and validation before deployment.
