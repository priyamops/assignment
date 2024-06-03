# Security group for alb
resource "aws_security_group" "albsg" {
  vpc_id = aws_vpc.web_vpc.id
  name = var.aws_security_group_name
  description = var.aws_security_group_desc
  ingress {
   from_port = 80
   to_port = 80
   protocol = "tcp"
   cidr_blocks = [ "0.0.0.0/0" ]
  }
}

#Security group for ec2

resource "aws_security_group" "ec2_sg" {
     vpc_id = aws_vpc.web_vpc.id
     name = var.aws_security_group_ec2_name
     description = var.aws_security_group_ec2_desc
     ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [  ] # Input your private IP
     }
     ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = [  ] # Input your private IP
     }
}
