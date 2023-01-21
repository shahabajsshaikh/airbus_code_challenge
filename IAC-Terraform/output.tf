# Account Id.
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

# Lambda ARN.
output "lambda_arn" {
  value = aws_lambda_function.lambda_files.*.arn
}
