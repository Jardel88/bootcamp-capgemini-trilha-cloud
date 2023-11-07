variable "ec2_name" {
  description = "Nome da instância do EC2"
  type = string
}

variable "vpc_name" {
  description = "Nome da VPC"
  type = string
}

variable "subnet_name" {
  description = "Nome da subnet"
  type = string
}

variable "env" {
  description = "Ambiente que será provisionado"
  type = string
}
