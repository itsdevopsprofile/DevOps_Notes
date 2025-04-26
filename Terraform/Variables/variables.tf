variable "vpc_cidr_block" {
    type = string 
    description = "value of vpc cidr block"
    default = "192.168.0.0/16"
}

variable "subnet_cidr_block" {
    default = "192.168.0.0/23"
  
}

variable "az" {
    type = list(string)
    default = ["ap-southeast-1a", "ap-southeast-1b" ]
}

variable "public_ip" {
    type = bool 
    default = true
}

variable "no_ip" {
    type = bool
    default = false
  
}


variable "ami_id" {
    default = "ami-05ab12222a9f39021"
}

variable "instance_type" {
  default = "t2.micro"
}
