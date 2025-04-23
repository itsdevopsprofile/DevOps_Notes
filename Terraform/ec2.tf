resource "aws_instance" "vm" {
    ami = "ami-05ab12222a9f39021"    #replace ami id
    instance_type = "t2.micro"
    key_name = "laptop-key"           # key pair name also
    vpc_security_group_ids = ["sg-00249525d95faa5da"]   # optional
    tags = {
        Name = "TF-SERVER"
    }
  
}
