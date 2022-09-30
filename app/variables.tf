variable "projname" {
  type        = string
  default     = "miniprojet-julien"
  description = "nom du projet"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "type d'image pour l'instance"
}

variable "region" {
  type        = string
  default     = "us-west-1"
  description = "Region AWS du projet"
}

variable "sg_ports_ingress" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [22, 80, 443]
}

variable "sg_ports_egress" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [0]
}

variable "ebs_size" {
type = number
description = "taille du volume ebs"
default = 1
}


