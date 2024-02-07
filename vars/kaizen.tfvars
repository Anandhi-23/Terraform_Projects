#value for avalibility zone
az = ["us-east-2a", "us-east-2b"]

#values for vpc
vpc_cidr = "10.0.0.0/16"
vpc_enable_dns_hostnames = true
vpc_enable_dns_support = true
vpc_name = "KaiZen_app_vpc"

#values for subnets
public_subnets_cidr = ["10.0.1.0/24", "10.0.2.0/24"]
public_ip_on_launch = true
public_subnet_name = "KaiZen_app_public_subnet_"
private_subnets_cidr = ["10.0.3.0/24", "10.0.4.0/24"]
private_subnet_name = "KaiZen_app_private_subnet_"

#values for route tables
route_table_cidr = "0.0.0.0/0"
public_route_table_name = "KaiZen_app_public_route_table"
private_route_table_name = "KaiZen_app_private_route_table_"

#value for IGW
internet_gateway_name = "KaiZen_app_igw"

#values for EIP
elastic_ip_count = 2
elastic_ip_name = "KaiZen_app_elastic_ip_"

#value for NAT gateway
nat_gateway_name = "KaiZen_app_nat_gateway_"

#values for security groups
sg_name = "KaiZen_app_sg"
sg_description = "This is the Security Group configuration for KaiZen app"
sg_cidr = ["0.0.0.0/0"]
ingress_from_port = 80
ingress_to_port = 80
ingress_protocol = "tcp"
egress_from_port = 0
egress_to_port = 0
egress_protocol = -1
sg_tag = "KaiZen_app_Security_Group"

#values for ALB
alb_name = "KaiZen-app-alb"
internal_value = false
lb_type = "application"
alb_tag = "KaiZen_app_ALB"

#values for target group
tg_name = "KaiZen-TargetGroup"
tg_port = 80
tg_protocol = "HTTP"
target_type = "instance"
health_check_path = "/"
health_check_port = "80"
health_check_protocol = "HTTP"
health_check_healthy_threshold = 2
health_check_unhealthy_threshold = 2
health_check_interval = 90
health_check_timeout = 20

#values for ALB listener
alb_listener_port = 80
alb_listener_protocol = "HTTP"
alb_listener_type = "forward"

#values for launch template
template_name = "KaiZen_launch_template"
image_id = "ami-05fb0b8c1424f266b"
instance_type = "t2.micro"
user_data = "user_data.sh"
public_ip_address = false
resource_type = "instance"
template_tag = "KaiZen_app_instance"

#values for ASG
asg_desired_capacity = 2
asg_max_size = 2
asg_min_size = 1