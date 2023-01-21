locals {
  tags = {
    Name = "${var.env}-Airbus"
  }
}

locals {
  lambda_value = lookup(var.lambdas, var.env)
}

locals {
  env = var.env
}
