variable "vpc_cidr_block" {
  description = "define cidr block for vpc"
  type        = string
  default     = "192.168.0.0/16"
}


variable "subnet_cidr_block" {
  type    = string
  default = "192.168.0.0/22"
}

variable "az" {
  type    = string
  default = "ap-southeast-1a"
}

variable "public_access" {
  type    = bool
  default = true
}

variable "ami_id" {
  type    = string
  default = "ami-0ac0e4288aa341886"
}


variable "ins_type" {
  type    = string
  default = "t3.micro"
}

variable "key" {
  type    = string
  default = "ssh-key"
}
