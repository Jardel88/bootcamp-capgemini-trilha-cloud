resource "aws_vpc" "my_vpc" {
  cidr_block = "${var.network_prefix}.0.0/16"

  tags = {
    "Name" = "${var.env}-vpc"
    "Environment" = var.env
  }
}