vpc_cidr_block    = "192.168.0.0/16"
subnet_cidr_block = ["192.168.0.0/20", "192.168.16.0/20"]
az                = ["ap-southeast-1a", "ap-southeast-1b"]
assign_pub_ip     = true
no_public_ip = false
ami_id            = "ami-0543dbdaf4e114be7"
ins_type          = "t3.micro"
key               = "id_rsa"
