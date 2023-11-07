variable "environment" {
  description = "Sigla do ambiente correspondente a implantação"
  type        = string
}

variable "service" {
  description = "Nome do serviço que será provisionado"
  type        = string
}

variable "product" {
  description = "Nome do produto que será provisionado"
  type        = string
}

variable "owner" {
  description = "Nome do time responsável"
  type        = string
}

variable "subnet_ids" {
  description = "ID da subnet utilizada para criar as instâncias do auto scaling"
  type        = list(any)
}

variable "aws_vpc" {
  description = "Nome do produto que será provisionado"
  type        = string
}

variable "engine" {
  description = "Engine do banco de dados"
  type        = string
}

variable "storage" {
  description = "Tamanho inicial do disco"
  type        = string
}

variable "db_username" {
  description = "Nome do usuário root do banco de dados"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Senha do usuário root do banco de dados"
  type        = string
  sensitive   = true
}

variable "domain" {
  description = "ID do Directory Active Directory para incluir a instancia no domínio"
  type        = string
  default     = ""
}

variable "domain_iam_role_name" {
  description = "Role para acesso ao Directory Active Directory"
  type        = string
  default     = ""
}