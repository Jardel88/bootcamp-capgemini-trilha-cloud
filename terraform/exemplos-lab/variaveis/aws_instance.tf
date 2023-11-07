resource "aws_instance" "foo" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }
  tags = {
    "Name" = var.ec2_name
    "Environment" = var.env
  }
}