resource "aws_vpc" "vnet" {
  cidr_block = var.vpc_cidr_block
  tags = {
     Name = "vpc-01"
  }
}

resource "aws_subnet" "s1" {
  vpc_id = aws_vpc.vnet.id 
  cidr_block = var.subnet_cidr_block 
  availability_zone = var.az 
  map_public_ip_on_launch = var.public_ip
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vnet.id 
  tags = {
    Name = "igw-vpc-01"
  }
}


resource "aws_route_table" "rt-1" {
  vpc_id = aws_vpc.vnet.id 
  tags = {
    Name = "rt-public"
  }

  route {
    gateway_id = aws_internet_gateway.igw.id 
    cidr_block = "0.0.0.0/0"
  }
}


resource "aws_route_table_association" "rta" {
  subnet_id = aws_subnet.s1.id 
  route_table_id = aws_route_table.rt-1.id 
}



resource "aws_security_group" "sg" {
  vpc_id = aws_vpc.vnet.id 
  name = "tf-modules-revise"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0  
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
