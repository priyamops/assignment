output "elastic_ip" {
  value = aws_eip.nat_eip.public_ip
}
