# Creating private route table

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.web_vpc.id
  route {
    cidr_block = aws_route_table_public_cidr
    gateway_id = aws_nat_gateway.ec2_nat.id
  }
}