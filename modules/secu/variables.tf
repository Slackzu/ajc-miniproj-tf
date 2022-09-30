variable "projname" {
  type        = string
  description = "project name"
}

variable "sg_ports_ingress" {
  type        = list(number)
  description = "list of ingress to use"
}

variable "sg_ports_egress" {
  type        = list(number)
  description = "list of egress to use"
}
