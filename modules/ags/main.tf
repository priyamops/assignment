# Launching template for ASG

resource "aws_launch_template" "ec2_template" {
  name_prefix = var.aws_launch_template_name
  instance_type = var.aws_launch_template_instance
  image_id = var.aws_launch_template_image
  vpc_security_group_ids = [ aws_security_group.ec2_sg.id ]
  network_interfaces {
    subnet_id = aws_subnet.private_subnet.id
  }
}

# Auto Scaling group

resource "aws_autoscaling_group" "ec2asg" {
  name = var.aws_autoscaling_group_name
  desired_capacity = var.aws_autoscaling_group_desired_capacity
  min_size = var.aws_autoscaling_group_min_size
  max_size = var.aws_autoscaling_group_max_size

  launch_template {
    id = aws_launch_template.ec2_template.id
  }
}