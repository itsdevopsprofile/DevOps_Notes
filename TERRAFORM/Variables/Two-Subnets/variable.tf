variable "vpc_cidr_block" {
  type = string
}

variable "subnet_cidr_block" {
  type = list(string)
}

variable "az" {
  type = list(string)
}

variable "assign_pub_ip" {
  type = bool
}

variable "no_public_ip" {
  type = bool
}
# ec2 

variable "ami_id" {
  type = string
}


variable "ins_type" {
  type = string
}

variable "key" {
  type = string

}
