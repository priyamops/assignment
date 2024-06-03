resource "aws_eip" "nat_eip" {
  depends_on = [ aws_internet_gateway.web_ig ]
}

resource "aws_nat_gateway" "ec2_nat" {
  subnet_id = aws_subnet.public_subnet.id
  allocation_id = aws_eip.nat_eip
}
