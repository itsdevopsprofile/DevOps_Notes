
resource "aws_vpc" "vnet" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "vpc-terraform"
  }
}

# public subnet
resource "aws_subnet" "pub" {
  vpc_id                  = aws_vpc.vnet.id
  cidr_block              = var.subnet_cidr_block[0]
  availability_zone       = var.az[0]
  map_public_ip_on_launch = var.assign_pub_ip
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vnet.id
  tags = {
    Name = "igw-vpc-tf"
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
  subnet_id      = aws_subnet.pub.id
  route_table_id = aws_route_table.rt-1.id
}


# private subnet

resource "aws_subnet" "pri" {
  vpc_id = aws_vpc.vnet.id
  cidr_block = var.subnet_cidr_block[1]
  availability_zone = var.az[1]
  map_public_ip_on_launch = var.no_public_ip
  tags = {
    Name = "private-subnet"
  }
}

resource "aws_eip" "fix" {
  domain = "vpc"
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.fix.id
  subnet_id = aws_subnet.pub.id
  tags = {
    Name = "nat-gw-tf-vpc"
  }
}

resource "aws_route_table" "rt-2" {
  vpc_id = aws_vpc.vnet.id 
  tags = {
    Name = "rt-private"
  }

  route {
    nat_gateway_id = aws_nat_gateway.natgw.id 
    cidr_block = "0.0.0.0/0"
  }
}

resource "aws_route_table_association" "rtb" {
  subnet_id = aws_subnet.pri.id 
  route_table_id = aws_route_table.rt-2.id
}

resource "aws_security_group" "sg" {
  name   = "tf-firewall"
  vpc_id = aws_vpc.vnet.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "ec2" {
  ami                    = var.ami_id
  instance_type          = var.ins_type
  key_name               = var.key
  subnet_id              = aws_subnet.pub.id
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "myec2"
  }
}

