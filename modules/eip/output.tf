output "id" {
  description = "EIP ID"
  value       = aws_eip.julien-eip.id
}

output "public_ip" {
  description = "public IP address"
  value       = aws_eip.julien-eip.public_ip
}

output "public_dns" {
  description = "EIP's public DNS"
  value       = aws_eip.julien-eip.public_dns
}
