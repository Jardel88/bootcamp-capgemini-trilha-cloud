variable "ec2_name" {
  type = string
  description = "EC2 Name"
}

variable "vpc_name" {
  type = string
  description = "VPC name"
}

variable "subnet_name" {
  type = string
  description = "Subnet Name"
}

variable "sg_ingress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8080, 80,21, 22, 443]
}

variable "sg_egress_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8080, 80,21, 22, 443]
}
