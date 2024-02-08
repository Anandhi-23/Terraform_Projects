#calling kaizen module
module "kaizen" {
  source                   = "./modules/kaizen"
  az                       = var.az
  vpc_cidr                 = var.vpc_cidr
  vpc_enable_dns_hostnames = var.vpc_enable_dns_hostnames
  vpc_enable_dns_support   = var.vpc_enable_dns_support
  vpc_name                 = var.vpc_name
  public_subnets_cidr      = var.public_subnets_cidr
  public_ip_on_launch      = var.public_ip_on_launch
  public_subnet_name       = var.public_subnet_name
  private_subnets_cidr     = var.private_subnets_cidr
  private_subnet_name      = var.private_subnet_name
  route_table_cidr         = var.route_table_cidr
  public_route_table_name  = var.public_route_table_name
  private_route_table_name = var.private_route_table_name
  internet_gateway_name    = var.internet_gateway_name
  elastic_ip_count         = var.elastic_ip_count
  elastic_ip_name          = var.elastic_ip_name
  nat_gateway_name         = var.nat_gateway_name

  sg_name           = var.sg_name
  sg_description    = var.sg_description
  sg_cidr           = var.sg_cidr
  ingress_from_port = var.ingress_from_port
  ingress_to_port   = var.ingress_to_port
  ingress_protocol  = var.ingress_protocol
  egress_from_port  = var.egress_from_port
  egress_to_port    = var.egress_to_port
  egress_protocol   = var.egress_protocol
  sg_tag            = var.sg_tag

  alb_name                         = var.alb_name
  internal_value                   = var.internal_value
  lb_type                          = var.lb_type
  alb_tag                          = var.alb_tag
  tg_name                          = var.tg_name
  tg_port                          = var.tg_port
  tg_protocol                      = var.tg_protocol
  target_type                      = var.target_type
  health_check_path                = var.health_check_path
  health_check_port                = var.health_check_port
  health_check_protocol            = var.health_check_protocol
  health_check_healthy_threshold   = var.health_check_healthy_threshold
  health_check_unhealthy_threshold = var.health_check_unhealthy_threshold
  health_check_interval            = var.health_check_interval
  health_check_timeout             = var.health_check_timeout
  alb_listener_port                = var.alb_listener_port
  alb_listener_protocol            = var.alb_listener_protocol
  alb_listener_type                = var.alb_listener_type

  template_name        = var.template_name
  image_id             = var.image_id
  instance_type        = var.instance_type
  user_data            = var.user_data
  public_ip_address    = var.public_ip_address
  resource_type        = var.resource_type
  template_tag         = var.template_tag
  asg_desired_capacity = var.asg_desired_capacity
  asg_max_size         = var.asg_max_size
  asg_min_size         = var.asg_min_size
}






