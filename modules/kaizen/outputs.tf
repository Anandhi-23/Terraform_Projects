#outputs for vpc
output "vpc_id" {
  description = "This output is to display VPC ID"
  value       = aws_vpc.kaizen-app-vpc.id
}

output "enable_dns_hostnames" {
  description = "This output is to check whether the dns hostname is enabled or not for VPC"
  value       = aws_vpc.kaizen-app-vpc.enable_dns_hostnames
}

output "enable_dns_support" {
  description = "This output is to check whether the dns support is enabled or not for VPC"
  value       = aws_vpc.kaizen-app-vpc.enable_dns_support
}

#output for IGW
output "internet_gateway_id" {
  description = "This output is to display Internet gateway ID"
  value       = aws_internet_gateway.kaizen-app-igw
}

#outputs for subnets
output "public_subnet_id" {
  description = "This output is to display the public subnet id"
  value       = aws_subnet.kaizen-pub-subnet[*].id
}

output "private_subnet_id" {
  description = "This output is to display the private subnet id"
  value       = aws_subnet.kaizen-pri-subnet[*].id
}

#outputs for route tables
output "public_route_table_id" {
  description = "This output is to display the public route table id"
  value       = aws_route_table.kaizen-pub-rt.id
}

output "private_route_table_id" {
  description = "This output is to display the private route table id"
  value       = aws_route_table.kaizen-pri-rt[*].id
}

#output for EIP
output "elastic_ip" {
  description = "This output is to display elastic ip"
  value       = aws_eip.kaizen-eip[*].id
}

#output for NAT gateway
output "nat_gateway_id" {
  description = "This output is to display the NAT gateway ID"
  value       = aws_nat_gateway.kaizen-nat[*].id
}

output "security_group_id" {
  description = "This output is to display the security group ID"
  value       = aws_security_group.kaizen-sg.id
}

output "alb_dns" {
  description = "This output is to display the ALB DNS name"
  value       = aws_alb.kaizen-alb.dns_name
}

output "alb_target_group_id" {
  description = "This output is to display the ALB target group ID"
  value       = aws_lb_target_group.kaizen-tg.arn
}

output "asg_launch_template_id" {
  description = "This output is to display the launch template ID for ASG"
  value       = aws_launch_template.kaizen-launch-temp.id
}

output "asg_id" {
  description = "This output is to display ASG ID"
  value       = aws_autoscaling_group.kaizen_asg.id
}

