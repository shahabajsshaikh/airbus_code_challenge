# This is for state file save configuration with S3.
terraform {
  backend "s3" {
    bucket = "airbus-bucket"
    region = var.aws_region
  }
}