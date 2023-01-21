variable "aws_region" {
  type        = string
  description = "Deployment region"
  default     = "ap-south-1"
}

variable "env" {
  type = string
  description = "This is environment prifix"
}

variable "lambdas" {
  type = map(any)
  default = {
    "dev" = [
      {
        # Lambda 1
        lambda_function = "ec2-metadata"
      }
    ]
    "prod" = [
      {
        # Lambda 1
        lambda_function = "ec2-metadata"
      }
    ]
  }
}