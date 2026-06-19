output "elastic_ip" {
  value = aws_eip.nat_eip.public_ip
}

output "iam_user_arn" {
  value = aws_iam_user.lab_user.arn
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gateway.id
}