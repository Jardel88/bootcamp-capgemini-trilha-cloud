resource "aws_network_interface" "foo" {
  subnet_id   = var.subnet_id
  private_ips = ["172.16.10.100"]

  tags = {
    "Name" = "${var.env}-${var.ec2_name}"
    "Environment" = var.env
  }
}
