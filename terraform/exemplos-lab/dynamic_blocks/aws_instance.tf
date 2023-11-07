resource "aws_instance" "foo" {
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"

  vpc_security_group_ids = [
    aws_security_group.demo_sg.id
  ]

  tags = {
    "Name" = var.ec2_name
    "Environment" = "MyEnv"
  }
}