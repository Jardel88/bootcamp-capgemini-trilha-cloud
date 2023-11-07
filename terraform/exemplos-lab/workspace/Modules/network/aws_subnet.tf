resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "${var.network_prefix}.0.0/24"
  availability_zone = "${var.region}a"

  tags = {
    "Name" = "${var.env}-subnet"
    "Environment" = var.env
  }
}