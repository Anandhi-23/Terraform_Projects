#resource block for launch template
resource "aws_launch_template" "kaizen-launch-temp" {
  name_prefix   = var.template_name
  image_id      = var.image_id
  instance_type = var.instance_type
  user_data     = filebase64(var.user_data)

  network_interfaces {
    associate_public_ip_address = var.public_ip_address
    subnet_id                   = element(aws_subnet.kaizen-pri-subnet[*].id, 0)
    security_groups             = [aws_security_group.kaizen-sg.id]
  }

  tag_specifications {
    resource_type = var.resource_type
    tags = {
      Name = var.template_tag
    }
  }
}

#resource block for auto scaling group
resource "aws_autoscaling_group" "kaizen_asg" {
  desired_capacity = var.asg_desired_capacity
  max_size         = var.asg_max_size
  min_size         = var.asg_min_size

  #connect to the target group
  target_group_arns = [aws_lb_target_group.kaizen-tg.arn ]

  vpc_zone_identifier = [
    element(aws_subnet.kaizen-pri-subnet[*].id, 0)
  ]

  launch_template {
    id      = aws_launch_template.kaizen-launch-temp.id
    version = "$Latest"
  }
}