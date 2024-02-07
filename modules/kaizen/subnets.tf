#resource block to create public subnet 
resource "aws_subnet" "kaizen-pub-subnet" {
    count = length(var.az)
    vpc_id = aws_vpc.kaizen-app-vpc.id
    cidr_block = element(var.public_subnets_cidr, count.index)
    availability_zone = element(var.az, count.index)
    map_public_ip_on_launch = var.public_ip_on_launch

    tags = {
      Name = format("%s%d", var.public_subnet_name, count.index + 1)
    }
}

#resource block to associate custom route table for public subnet
resource "aws_route_table_association" "kaizen-pub-rt-association" {
    count = length(var.public_subnets_cidr)
    subnet_id = element(aws_subnet.kaizen-pub-subnet[*].id, count.index)
    route_table_id = aws_route_table.kaizen-pub-rt.id
}

#resource block to create private subnet
resource "aws_subnet" "kaizen-pri-subnet" {
    count = length(var.az)
    vpc_id = aws_vpc.kaizen-app-vpc.id
    cidr_block = element(var.private_subnets_cidr, count.index)
    availability_zone = element(var.az, count.index)

    tags = {
      Name = format("%s%d", var.private_subnet_name, count.index + 1)
    }
}

#resource block to associate custom route table for private subnet
resource "aws_route_table_association" "kaizen-pri-rt-association" {
    count = length(var.private_subnets_cidr)
    subnet_id = element(aws_subnet.kaizen-pri-subnet[*].id, count.index)
    route_table_id = element(aws_route_table.kaizen-pri-rt[*].id, count.index) 
}