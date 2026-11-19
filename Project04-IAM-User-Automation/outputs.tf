output "user_name" {
  value = aws_iam_user.project_user.name
}

output "attached_policy" {
  value = var.policy_arn
}
