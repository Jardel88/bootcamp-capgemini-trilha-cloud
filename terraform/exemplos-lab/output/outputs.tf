output "ec2" {
  value = aws_instance.foo
}

output "ec2_private_ip" {
  value = aws_instance.foo.private_ip
}
