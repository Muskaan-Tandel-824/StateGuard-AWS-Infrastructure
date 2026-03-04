output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.My-Ec2.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.My-Ec2.public_ip
}
