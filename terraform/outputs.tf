output "bastion_public_ip" {
  description = "Public IP of the bastion host"
  value       = aws_instance.bastion.public_ip
}

output "app_private_ip" {
  description = "Private IP of the app server"
  value       = aws_instance.app.private_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}
