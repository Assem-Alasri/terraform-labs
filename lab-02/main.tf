#################################################
# VPC
#################################################

resource "aws_vpc" "lab_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "Lab-02-VPC"
  }
}

#################################################
# Public Subnet
#################################################

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.lab_vpc.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = "Lab-02-Public-Subnet"
  }
}

#################################################
# Internet Gateway
#################################################

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.lab_vpc.id

  tags = {
    Name = "Lab-02-IGW"
  }
}

#################################################
# IAM User
#################################################

resource "aws_iam_user" "lab_user" {
  name = "Lab-02_user"
}

#################################################
# Elastic IP
#################################################

resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name = "Lab-02-EIP"
  }
}

#################################################
# NAT Gateway
#################################################

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet.id

  depends_on = [
    aws_internet_gateway.igw
  ]

  tags = {
    Name = "Lab-02-NAT-Gateway"
  }
}
