# Creating public route table

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.web_vpc.id
  route {
    cidr_block = var.aws_route_table_public_cidr
    gateway_id = aws_internet_gateway.web_ig.id  
  }
}

# Public route table association

resource "aws_route_table_association" "public_rta" {
    route_table_id = aws_route_table.public_rt.id
    subnet_id = aws_subnet.public_subnet.id
}

