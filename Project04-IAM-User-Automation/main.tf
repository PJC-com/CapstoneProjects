terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "project_user" {
  name = var.user_name

  tags = {
    Project = "Project04-IAM"
  }
}

resource "aws_iam_user_policy_attachment" "s3_read_access" {
  user       = aws_iam_user.project_user.name
  policy_arn = var.policy_arn
}
