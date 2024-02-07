#resource block to create route table for public subnet
resource "aws_route_table" "kaizen-pub-rt" {
  vpc_id = aws_vpc.kaizen-app-vpc.id

  route {
    cidr_block = var.route_table_cidr
    gateway_id = aws_internet_gateway.kaizen-app-igw.id
  }

  tags = {
    Name = var.public_route_table_name
  }
}

#resource block to create route table for private subnet
resource "aws_route_table" "kaizen-pri-rt" {
  count = length(var.private_subnets_cidr)
  vpc_id = aws_vpc.kaizen-app-vpc.id

  route {
    cidr_block = var.route_table_cidr
    nat_gateway_id = element(aws_nat_gateway.kaizen-nat[*].id, count.index)
  }

  tags = {
    Name = format("%s%d", var.private_route_table_name, count.index + 1)
  } 
}