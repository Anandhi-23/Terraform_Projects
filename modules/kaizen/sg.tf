#resource block to create security group
resource "aws_security_group" "kaizen-sg" {
    name        = var.sg_name
    description = var.sg_description
    vpc_id      = aws_vpc.kaizen-app-vpc.id

    ingress {
        description = "Allow SSH traffic"
        from_port   = 22
        to_port     = 22
        protocol    = var.ingress_protocol
        cidr_blocks = var.sg_cidr
    }

    ingress {
        description = "KaiZen app traffic"
        from_port   = var.ingress_from_port
        to_port     = var.ingress_to_port
        protocol    = var.ingress_protocol
        cidr_blocks = var.sg_cidr
    }

    egress {
        description = "Outbound traffic"
        from_port   = var.egress_from_port
        to_port     = var.egress_to_port
        protocol    = var.egress_protocol
        cidr_blocks = var.sg_cidr
    }

    tags = {
        Name = var.sg_tag
    } 
}