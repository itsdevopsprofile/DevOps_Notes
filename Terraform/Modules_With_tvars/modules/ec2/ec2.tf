resource "aws_instance" "v1" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.pub_subnet_id
    vpc_security_group_ids = [var.security_group_ids]
    tags = {
        Name = "public-server"
    }
}

resource "aws_instance" "v2" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.pri_subnet_id
    vpc_security_group_ids = [var.security_group_ids]
    tags = {
        Name = "private-server"
    }
}
