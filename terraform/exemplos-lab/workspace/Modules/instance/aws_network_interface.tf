resource "aws_network_interface" "foo" {
  subnet_id   = var.subnet_id
  private_ips = ["${var.network_prefix}.0.100"]

  tags = {
    "Name" = "${var.instance_name}-primary_network_interface"
    "Environment" = var.env
  }
}