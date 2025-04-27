resource "aws_vpc" "vnet" {
    cidr_block = var.vpc_cidr_block
    tags = {
        Name = "TF-VPC"
    }
}

resource "aws_subnet" "pub" {
    vpc_id = aws_vpc.vnet.id
    cidr_block = var.subnet_cidr_block[0]
    availability_zone =  var.az[0]
    map_public_ip_on_launch = var.public_ip
    tags = {
        Name = "public-subnet-tf-vpc"
    }
}

resource "aws_subnet" "pri" {
    vpc_id = aws_vpc.vnet.id
    cidr_block = var.subnet_cidr_block[1]
    availability_zone = var.az[1]
    map_public_ip_on_launch = var.no_ip
    tags = {
        Name = "private-subnet-tf-vpc"
    }
}

resource "aws_eip" "ip" {
    domain = "vpc"

}

resource "aws_nat_gateway" "nat" {
   
    subnet_id = aws_subnet.pub.id
    allocation_id = aws_eip.ip.id
    tags = {
      Name = "My-Nat-TF"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vnet.id 
    tags = {
        Name = "igw-tf-vpc"
    }
}

resource "aws_route_table" "rt-pub" {
    vpc_id = aws_vpc.vnet.id 
    tags = {
        Name = "RT-Public-TF-VPC"
    }

    route {
        gateway_id = aws_internet_gateway.igw.id 
        cidr_block = "0.0.0.0/0"
    }
}

resource "aws_route_table_association" "rt-1" {
    subnet_id = aws_subnet.pub.id 
    route_table_id = aws_route_table.rt-pub.id
}


resource "aws_route_table" "rt-pri" {
    vpc_id = aws_vpc.vnet.id 
    tags = {
        Name = "RT-Private-TF-VPC"
    }

    route {
        nat_gateway_id = aws_nat_gateway.nat.id
        cidr_block = "0.0.0.0/0"
    }
}

resource "aws_route_table_association" "rt-2" {
    subnet_id = aws_subnet.pri.id 
    route_table_id = aws_route_table.rt-pri.id
}

resource "aws_security_group" "sg" {
    name = "tf-vpc-sg"
    vpc_id = aws_vpc.vnet.id

    ingress {
        to_port = 22
        from_port =22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

}

