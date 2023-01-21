variable "aws_region" {
  type        = string
  description = "Deployment region"
  default     = "ap-south-1"
}

variable "s3_key" {
  type        = string
  description = "S3 storage key"
}