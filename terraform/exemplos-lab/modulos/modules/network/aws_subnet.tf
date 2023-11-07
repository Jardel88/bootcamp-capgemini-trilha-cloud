resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "${var.env}-demo-terraform"
    "Environment" = "MyEnv"
  }
}
