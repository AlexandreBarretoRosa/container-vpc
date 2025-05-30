### Genaral comments ###

variable "project_name" {
  description = "O nome do projeto"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block to use for the VPC. Must be a valid IPv4 CIDR range."
  type        = string
  default     = "10.0.0.0/16"
}

variable "container_image" {
  type        = string
  description = "imagem com tag para deployment da aplicação do ecs"
}

variable "region" {}