 
### Public subnet ####

variable "aws_public_subnet" {
  type = string
  description = "cidr value for public subnet"
}

variable "aws_public_subnet_name" {
  type = string
  description = "Public subnet tag"
}

variable "aws_public_subnet_az" {
  type = string
  description = "Public subnet availability zone"
}