variable "ec2_name" {
  description = "Nome da instância do EC2"
  type = string
}

variable "subnet_id" {
  type = string
  description = "Subnet ID to network interface"
}

variable "env" {
  description = "Ambiente que será provisionado"
  type = string
}
