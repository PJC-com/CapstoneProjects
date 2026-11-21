# Project 18 - GitOps Infrastructure Deployment

## Objective

Implement a GitOps deployment workflow that automatically applies infrastructure changes after Pull Request approval and merge.

## Services Used

- GitHub
- GitHub Actions
- Terraform

## Project Overview

This project demonstrates a GitOps workflow using GitHub Actions and Terraform. Infrastructure changes are introduced through a feature branch, reviewed through a Pull Request, approved using GitHub Environments, and automatically deployed after merge.

## Activities Performed

- Created a feature branch for infrastructure changes.
- Configured a GitHub Actions deployment workflow.
- Created a GitHub Environment named Production.
- Added deployment approval requirements.
- Created and merged a Pull Request.
- Triggered automatic deployment after merge.
- Approved deployment through the GitHub Environment gate.
- Executed Terraform deployment workflow.

## Workflow Design

```text
Feature Branch
      ↓
Pull Request
      ↓
Merge
      ↓
Approval Gate
      ↓
Terraform Init
      ↓
Terraform Plan
      ↓
Terraform Apply
```

## GitHub Actions Workflow

The deployment workflow performs:

```bash
terraform init
terraform plan
terraform apply -auto-approve
```

## Approval Controls

Environment:

```text
Production
```

Approval Method:

```text
Required Reviewer
```

## Validation

The workflow executed successfully after Pull Request approval and completed the following stages:

- Terraform Initialization
- Terraform Planning
- Terraform Apply
- Deployment Completion

## Screenshots

- 1.GitHub-Environment-Approval.png
- 2.Feature-Branch-Created.png
- 3.Pull-Request-Created.png
- 4.Approval-Gate.png
- 5.GitOps-Workflow-Success.png

## Deliverable

### Workflow Run Screenshot

The GitHub Actions workflow executed successfully after approval and completed the automated infrastructure deployment process.

## Result

Successfully implemented a GitOps deployment pipeline using GitHub Actions, Terraform, Pull Requests, and approval gates. Infrastructure deployments are now automatically triggered and controlled through a GitOps workflow.
