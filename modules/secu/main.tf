resource "aws_security_group" "julien-sg" {
  name        = "$(var.projname)-sg"
  description = "SG du projet"

  tags = {
    Name      = "$(var.projname)"
    ManagedBy = "terraform"
    Role      = "public"
  }

  dynamic "ingress" {
    for_each = var.sg_ports_ingress
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {

    for_each = var.sg_ports_egress
    iterator = egress # variable temporaire
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
