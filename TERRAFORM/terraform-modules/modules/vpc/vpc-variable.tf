variable "vpc_cidr_block" {
  description = "define cidr block for vpc"
  type        = string
  
}


variable "subnet_cidr_block" {
  type    = string

}

variable "az" {
  type    = string

}

variable "public_access" {
  type    = bool

}
