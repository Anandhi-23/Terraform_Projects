#resource block for alb
resource "aws_alb" "kaizen-alb" {
  name               = var.alb_name
  internal           = var.internal_value
  load_balancer_type = var.lb_type
  security_groups    = [aws_security_group.kaizen-sg.id]
  subnets            = (aws_subnet.kaizen-pub-subnet[*].id)

  tags = {
    Name = var.alb_tag
  }
}

#resource bloack for alb target group
resource "aws_lb_target_group" "kaizen-tg" {
  name        = var.tg_name
  port        = var.tg_port
  protocol    = var.tg_protocol
  vpc_id      = aws_vpc.kaizen-app-vpc.id
  target_type = var.target_type

  health_check {
    enabled = true
    path = var.health_check_path
    port = var.health_check_port
    protocol = var.health_check_protocol
    healthy_threshold = var.health_check_healthy_threshold
    unhealthy_threshold = var.health_check_unhealthy_threshold
    interval = var.health_check_interval
    timeout = var.health_check_timeout
  }
}

#resource block for alb listener
resource "aws_lb_listener" "kaizen-alb-listener" {
  load_balancer_arn = aws_alb.kaizen-alb.arn
  port              = var.alb_listener_port
  protocol          = var.alb_listener_protocol
  default_action {
    type             = var.alb_listener_type
    target_group_arn = aws_lb_target_group.kaizen-tg.arn
  }
}