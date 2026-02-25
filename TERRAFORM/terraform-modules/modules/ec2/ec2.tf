resource "aws_instance" "vm" {
  ami                    = var.ami_id
  instance_type          = var.ins_type
  key_name               = var.key
  subnet_id              = var.subnet
  vpc_security_group_ids = [var.security_group]
  user_data              = <<-EOF
     #!/bin/bash
     sudo -i
     yum install httpd -y 
     systemctl start httpd 
     systemctl enable httpd 
     echo "Hello Terraform Again" > /var/www/html/index.html
    EOF

  tags = {
    Name = "webserver"
  }


}
