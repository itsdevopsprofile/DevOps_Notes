resource "aws_instance" "vm" {
    ami = "ami-05ab12222a9f39021" # change ami id
    instance_type = "t2.micro"
    key_name = "laptop-key"     # add your private key name
    vpc_security_group_ids = [aws_security_group.sg.id]
    user_data = <<-EOF
    #!/bin/bash
    sudo -i
    yum install httpd -y
    systemctl start httpd
    systemctl enable httpd
    echo "Hello Terrrraform" > /var/www/html/index.html
    EOF

    tags = {
        Name = "Web-Server"
    }
}


resource "aws_security_group" "sg" {
    name = "webserver-demo-sg"
    vpc_id = "vpc-0b513c39beed873c2"   # change vpc id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

      ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
