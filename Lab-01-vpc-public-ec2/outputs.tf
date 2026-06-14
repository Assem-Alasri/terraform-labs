output "instance_id" {
  value = aws_instance.server.id
}

output "public_ip" {
  value = aws_instance.server.public_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.public.id
}