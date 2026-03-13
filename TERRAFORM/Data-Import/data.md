# Terraform Data BLock
- A data block used when you want 
  terraform to read info about your 
  existing resource on aws

- but tf doesnt manage it


````
data "aws_ami" "linux" {
  most_recent = true
  owners = ["amazon"]
filter {
  name = "name"
  values = ["al2023-ami-2023.10.20260216.1-kernel-6.1-x86_64"]
}
}



resource "aws_instance" "vm" {
  ami                    = data.aws_ami.linux.id
  instance_type          = "t3.micro"

  tags = {
    Name = "server-01"
  }


}
````
