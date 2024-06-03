# Creating VPC


resource "aws_vpc" "web_vpc" {
  cidr_block = var.aws_vpc_cidr
  tags = {
    name = var.aws_vpc_tag
  }
}