## This Project contains Terraform configuration files for the below project

## A brief overview of the project: 
The Virtual Private Cloud (VPC) includes both public and private subnets spread across two availability zones. To enhance resilience, each public subnet features a NAT Gateway and a Load Balancer. For added security, servers operating within the private subnets are managed via an Auto Scaling Group, ensuring their launch and termination, and they receive traffic from the Load Balancer. Connectivity to the internet for these servers is facilitated through a NAT Gateway. Users access the application via an Internet Gateway, then through the Load Balancer, ultimately reaching the application deployed in the private subnets.
