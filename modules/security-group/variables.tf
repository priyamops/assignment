# Security Group for alb
variable "aws_security_group_name" {
  type = string
  description = "Name of the security group"
}

variable "aws_security_group_desc" {
  type = string
  description = "Description of the security group"
}

# Security Group for ec2
variable "aws_security_group_ec2_name" {
  type = string
  description = "Name of the security group"
}

variable "aws_security_group_ec2_desc" {
  type = string
  description = "Description of the sg group"
}
