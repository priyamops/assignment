# Creating a Public subnet

resource "aws_subnet" "public_subnet" {
  vpc_id = module.vpc.aws_vpc.web_vpc.id
  cidr_block = var.aws_public_subnet
  tags = {
    name = var.aws_public_subnet_name
  }
  availability_zone = var.aws_public_subnet_az 
  map_public_ip_on_launch = true
}