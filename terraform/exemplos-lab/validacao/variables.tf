variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."

  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^ami-", var.image_id))
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

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
