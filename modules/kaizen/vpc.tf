#resource block to create vpc
resource "aws_vpc" "kaizen-app-vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = var.vpc_enable_dns_hostnames
    enable_dns_support = var.vpc_enable_dns_support

    tags = {
      Name = var.vpc_name
    }
}

