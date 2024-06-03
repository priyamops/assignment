# creating alb for public subnet

resource "aws_lb" "web_alb" {
  name = var.aws_lb_name
  internal = false
  load_balancer_type = "application"
  security_groups = [ aws_security_group.albsg.id ]
  subnets = aws_subnet.public_subnet.id
}

# creating target groups

resource "aws_lb_target_group" "web_target" {
  name = var.aws_lb_target_group_name
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.web_vpc.id

  health_check {
    path = "/"
    port = "traffic-port"
    interval = 30
  }
}

# Associating target (EC2) with target group
resource "aws_lb_target_group_attachment" "tg_" {
  target_group_arn = aws_lb_target_group.web_target.arn
  target_id = aws_instance.alb_instance.id
  port = 80
}

# Attaching target group with alb
resource "aws_lb_listener" "listerner_alb" {
  load_balancer_arn = aws_lb.web_alb.arn
  port = 80
  protocol = "HTTP"
  default_action {
    type = "forward" 
    target_group_arn = aws_lb_target_group.web_target.arn
  }

}