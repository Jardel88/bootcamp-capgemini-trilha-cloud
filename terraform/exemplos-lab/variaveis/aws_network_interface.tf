resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    "Name" = "primary_network_interface"
    "Environment" = var.env
  }
}