variable "vpc_cidr_block" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
}

variable "az" {
  type = string
}

variable "assign_pub_ip" {
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
