variable "instance_name" {
  type        = string
  description = "name of the instance"
}

variable "instance_type" {
  type        = string
  description = "type to use for the instance"
}

variable "volume_id" {
  type        = string
  description = "ebs id"
}

variable "eip_id" {
  type        = string
  description = "eip id"
}

