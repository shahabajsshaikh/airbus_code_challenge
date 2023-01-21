resource "aws_lambda_function" "lambda_files" {
  count                          = length(local.lambda_value)
  function_name                  = "${var.env}-${local.lambda_value[count.index].lambda_function}"
  description                    = " This operation lambda with nodejs SDK"
  role                           = "****************************"
  reserved_concurrent_executions = 10
  handler                        = "lambda_handler"
  tags                           = local.tags
  runtime                        = "python3.8"
  source_code_hash               = data.archive_file.python_build_zip[count.index].output_base64sha256
  filename                       = data.archive_file.python_build_zip[count.index].output_path
}