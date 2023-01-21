# Account Id.
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

# IAM Output.
output "policy_arn" {
  value = aws_iam_policy.node_js_lambda_folkonnect_policy.arn
}

output "role_arn" {
  value = aws_iam_role.node_js_lambda_folkonnect_role.arn
}

# Lambda ARN.
output "lambda_arn" {
  value = aws_lambda_function.lambda_files.*.arn
}
