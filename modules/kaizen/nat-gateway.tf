#resource block to create elastic ip
resource "aws_eip" "kaizen-eip" {
    count = var.elastic_ip_count
    domain = "vpc"

    tags = {
      Name = format("%s%d", var.elastic_ip_name, count.index + 1)
    }
}

#resource block to create NAT gateway
resource "aws_nat_gateway" "kaizen-nat" {
    count = length(var.public_subnets_cidr)
    allocation_id = element(aws_eip.kaizen-eip[*].id, count.index)
    subnet_id = element(aws_subnet.kaizen-pub-subnet[*].id, count.index)

    tags = {
      Name = format("%s%d", var.nat_gateway_name, count.index + 1)
    }
}
