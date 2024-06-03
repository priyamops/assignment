# Creating Ec2 in private subnet

resource "aws_instance" "web_instance" {
  ami = var.aws_instance_ami
  instance_type = var.aws_instance_type
  subnet_id = aws_subnet.private_subnet.id
  vpc_security_group_ids = [ aws_security_group.ec2_sg.id ]
  tags = {
    Name = var.aws_instance_tag
  }
  associate_public_ip_address = false
} 

# Creating EC2 instance for the LoadBalancer

resource "aws_instance" "alb_instance" {
  ami = var.aws_instance_ami
  instance_type = var.aws_instance_type
  subnet_id = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  count = 2
  tags = {
    Name = "${var.aws_instance_tag}${count.index}"
  }
}
