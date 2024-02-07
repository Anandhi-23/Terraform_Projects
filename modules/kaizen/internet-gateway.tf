#resource block to create internet gateway
resource "aws_internet_gateway" "kaizen-app-igw" {
    vpc_id = aws_vpc.kaizen-app-vpc.id

    tags = {
      Name = var.internet_gateway_name
    }
}