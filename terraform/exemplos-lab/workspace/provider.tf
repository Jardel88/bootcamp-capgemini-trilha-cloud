provider "aws" {
  region     = lookup(var.aws_region, local.env)
  access_key = ""
  secret_key = ""
}