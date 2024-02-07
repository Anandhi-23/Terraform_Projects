#outputs for vpc
output "vpc_id" {
  description = "This output is to display VPC ID"
  value       = module.kaizen.vpc_id
}

output "enable_dns_hostnames" {
  description = "This output is to check whether the dns hostname is enabled or not for VPC"
  value       = module.kaizen.enable_dns_hostnames
}

output "enable_dns_support" {
  description = "This output is to check whether the dns support is enabled or not for VPC"
  value       = module.kaizen.enable_dns_support
}

#output for IGW
output "internet_gateway_id" {
  description = "This output is to display Internet gateway ID"
  value       = module.kaizen.internet_gateway_id
}

#outputs for subnets
output "public_subnet_id" {
  description = "This output is to display the public subnet id"
  value       = module.kaizen.public_subnet_id
}

output "private_subnet_id" {
  description = "This output is to display the private subnet id"
  value       = module.kaizen.private_subnet_id
}

#outputs for route tables
output "public_route_table_id" {
  description = "This output is to display the public route table id"
  value       = module.kaizen.public_route_table_id
}

output "private_route_table_id" {
  description = "This output is to display the private route table id"
  value       = module.kaizen.private_route_table_id
}

#output for EIP
output "elastic_ip" {
  description = "This output is to display elastic ip"
  value       = module.kaizen.elastic_ip
}

#output for NAT gateway
output "nat_gateway_id" {
  description = "This output is to display the NAT gateway ID"
  value       = module.kaizen.nat_gateway_id
}

output "security_group_id" {
  description = "This output is to display the security group ID"
  value       = module.kaizen.security_group_id
}

output "alb_dns" {
  description = "This output is to display the ALB DNS name"
  value       = module.kaizen.alb_dns
}

output "alb_target_group_id" {
  description = "This output is to display the ALB target group ID"
  value       = module.kaizen.alb_target_group_id
}

output "asg_launch_template_id" {
  description = "This output is to display the launch template ID for ASG"
  value       = module.kaizen.asg_launch_template_id
}

output "asg_id" {
  description = "This output is to display ASG ID"
  value       = module.kaizen.asg_id
}


