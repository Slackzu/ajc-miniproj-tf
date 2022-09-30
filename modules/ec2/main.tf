data "aws_ami" "julien-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "ec2" {
  ami           = data.aws_ami.julien-ami.image_id
  instance_type = var.instance_type
  tags = {
    "Name" = var.instance_name
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id    = aws_instance.ec2.id
  allocation_id = var.eip_id
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = var.volume_id
  instance_id = aws_instance.ec2.id
}
