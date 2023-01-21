# To pullout current account metadata.
data "aws_caller_identity" "current" {}


# To archiving lambda function in zip.
data "archive_file" "python_build_zip" {
  count       = length(local.lambda_value)
  type        = "zip"
  source_dir  = "./src/${local.lambda_value[count.index].lambda_function}/"
  output_path = "./${local.lambda_value[count.index].lambda_function}.zip"
}