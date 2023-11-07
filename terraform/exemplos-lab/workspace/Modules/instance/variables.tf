variable "instance_name" {
  type = string
  description = "The instance name"
}

variable "ami" {
  type = string
  description = "The AMI ID"
}

variable "instance_type" {
  type = string
  description = "The instance type"
}

variable "env" {
  type = string
  description = "Environment to deploy"
}

variable "subnet_id" {
  type = string
  description = "Subnet ID to network interface"
}

variable "network_prefix" {
  type = number
  description = "The network prefix to VPC and subnet"
}