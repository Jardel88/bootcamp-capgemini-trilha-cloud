variable "network_prefix" {
  type = number
  description = "The network prefix to VPC and subnet"
}

variable "env" {
  type = string
  description = "Environment to deploy"
}

variable "region" {
  type = string
  description = "Region to AZ"
}