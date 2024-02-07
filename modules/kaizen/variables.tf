#variable for availability zone
variable "az" {
  description = "Variable to hold availability zones"
  type        = list(string)
}

#variables for vpc
variable "vpc_cidr" {
  description = "Variable to hold CIDR block for VPC"
  type        = string
}

variable "vpc_enable_dns_hostnames" {
  description = "Variable to hold enable dns hostnames for VPC"
  type        = bool
}

variable "vpc_enable_dns_support" {
  description = "Variable to hold enable dns support for VPC"
  type        = bool
}

variable "vpc_name" {
  description = "Variable to hold VPC name"
  type        = string
}

#variables for subnets
variable "public_subnets_cidr" {
  description = "Variable to hold CIDR blocks for public subnets"
  type        = list(string)
}

variable "public_ip_on_launch" {
  description = "Variable to hold boolean value for mapping public IP"
  type        = bool
}

variable "public_subnet_name" {
  description = "Variable to hold Public subnet name"
  type        = string
}

variable "private_subnets_cidr" {
  description = "Variable to hold CIDR blocks for private subnets"
  type        = list(string)
}

variable "private_subnet_name" {
  description = "Variable to hold Private subnet name"
  type        = string
}

#variables for route tables
variable "route_table_cidr" {
  description = "Variable to hold CIDR block for Route table"
  type        = string
}

variable "public_route_table_name" {
  description = "Variable to hold Public route table name"
  type        = string
}

variable "private_route_table_name" {
  description = "Variable to hold private route table name"
  type        = string
}

#variable for IGW
variable "internet_gateway_name" {
  description = "Variable to hold Internet Gateway name"
  type        = string
}

#variable for EIP
variable "elastic_ip_count" {
  description = "Variable to hold number of Elastic IP"
  type        = number
}

variable "elastic_ip_name" {
  description = "Variable to hold Elastic IP name"
  type        = string
}

#variable for NAT gateway
variable "nat_gateway_name" {
  description = "Variable to hold NAT Gateway name"
  type        = string
}

#variables for security group
variable "sg_name" {
  description = "Variable to hold name for security group"
  type        = string
}

variable "sg_description" {
  description = "Variable to hold description for security group"
  type        = string
}

variable "sg_cidr" {
  description = "Variable to hold CIDR block for security group"
  type        = list(string)
}

variable "ingress_from_port" {
    description = "Variable to hold FROM port for ingress"
    type        = number
}

variable "ingress_to_port" {
    description = "Variable to hold TO port for ingress"
    type        = number
}

variable "ingress_protocol" {
    description = "Variable to hold protocol for ingress"
    type        = string
}

variable "egress_from_port" {
    description = "Variable to hold FROM port for egress"
    type        = number
}

variable "egress_to_port" {
    description = "Variable to hold TO port for egress"
    type        = number
}

variable "egress_protocol" {
    description = "Variable to hold protocol for egress"
    type        = number
}

variable "sg_tag" {
    description = "Variable to hold tag for security group"
    type = string
}

#variables for ALB
variable "alb_name" {
  description = "Variable to hold name for ALB"
  type        = string
}

variable "internal_value" {
  description = "Variable to hold boolean value for internal"
  type        = bool
}

variable "lb_type" {
  description = "Variable to hold type of load balancer"
  type        = string
}

variable "alb_tag" {
  description = "Variable to hold tag of ALB"
  type        = string
}

#variables for ALB target group
variable "tg_name" {
  description = "Variable to hold name for target group"
  type        = string
}

variable "tg_port" {
  description = "Variable to hold port for target group"
  type        = number
}

variable "tg_protocol" {
  description = "Variable to hold protocol for target group"
  type        = string
}

variable "target_type" {
  description = "Variable to hold target type"
  type        = string 
}

variable "health_check_path" {
  description = "Variable to hold path for health check"
  type        = string
}

variable "health_check_port" {
  description = "Variable to hold port for health check"
  type        = string
}

variable "health_check_protocol" {
  description = "Variable to hold protocol for health check"
  type        = string
}

variable "health_check_healthy_threshold" {
  description = "Variable to hold healthy threshold value for health check"
  type        = number
}

variable "health_check_unhealthy_threshold" {
  description = "Variable to hold healthy unthreshold value for health check"
  type        = number
}

variable "health_check_interval" {
  description = "Variable to hold interval value for health check"
  type        = number
}

variable "health_check_timeout" {
  description = "Variable to hold interval value for health check"
  type        = number
}

#variables for ALB listener
variable "alb_listener_port" {
  description = "Variable to hold port for ALB listener"
  type        = number
}

variable "alb_listener_protocol" {
  description = "Variable to hold protocol for alb listener"
  type        = string
}

variable "alb_listener_type" {
  description = "Variable to hold type for alb listener"
  type        = string
}

#variables for launch template
variable "template_name" {
  description = "Variable to hold name for launch template"
  type        = string 
}

variable "image_id" {
  description = "Variable to hold ami for launch template"
  type        = string 
}

variable "instance_type" {
  description = "Variable to hold instance type for launch template"
  type        = string 
}

variable "user_data" {
  description = "Variable to hold user data filename for launch template"
  type        = string 
}

variable "public_ip_address" {
  description = "Variable to hold boolean value for associating public ip address for launch template"
  type        = bool
}

variable "resource_type" {
  description = "Variable to hold resource type for launch template"
  type        = string 
}

variable "template_tag" {
  description = "Variable to hold tag name for launch template"
  type        = string 
}

#variables for ASG
variable "asg_desired_capacity" {
  description = "Variable to hold desired capacity for ASG"
  type        = number 
}

variable "asg_max_size" {
  description = "Variable to hold max size for ASG"
  type        = number 
}

variable "asg_min_size" {
  description = "Variable to hold min size for ASG"
  type        = number 
}


