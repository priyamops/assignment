# Creating a private subnet

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.web_vpc.id
  cidr_block = var.aws_private_subnet_cidr
  tags = {
    name = var.aws_private_subnet_name
  }
  availability_zone = var.aws_private_subnet_az
  map_public_ip_on_launch = false
} 


