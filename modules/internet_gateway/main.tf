# Creating internet gateway for vpc

resource "aws_internet_gateway" "web_ig" {
  vpc_id = aws_vpc.web_vpc.id
  tags = {
    name = var.aws_internet_gateway_tag
  }
}