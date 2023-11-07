# output "ec2" { 
#   value = aws_instance.foo 
# } 

output "ec2_private_ip" { 
  value = aws_instance.foo.private_ip 
}

output "ec2_ami" { 
  value = aws_instance.foo.ami
} 