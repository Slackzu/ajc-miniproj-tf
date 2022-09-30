output "output_ec2_id" {
  value = aws_instance.ec2.id
}

output "output_ec2_az" {
  value = aws_instance.ec2.availability_zone
}

output "output_primary_network_interface_id" {
  value = aws_instance.ec2.primary_network_interface_id
}

