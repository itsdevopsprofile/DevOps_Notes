module "vpc" {
    source = "./modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    subnet_cidr_block = var.subnet_cidr_block
    az = var.az
    public_ip = var.public_ip
}

module "ec2" {
  source = "./modules/ec2"
  ami_id = var.ami_id
  key = var.key
  instance_type = var.instance_type
  subnet_id = module.vpc.subnet_id
  security_group_id = module.vpc.security_group_id
}
