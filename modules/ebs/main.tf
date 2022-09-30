resource "aws_ebs_volume" "julien-ebs" {
  availability_zone = var.region
  size              = var.ebs_size

  tags = {
    Name = var.projname
  }
}
