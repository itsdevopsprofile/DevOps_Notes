module "vpc" {
    source = "./modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    subnet_cidr_block = var.subnet_cidr_block
    az = var.az
    public_ip = var.public_ip
    no_ip = var.no_ip
}

module "ec2" {
    source = "./modules/ec2"
    ami_id = var.ami_id
    instance_type = var.instance_type
    pri_subnet_id = module.vpc.pri_subnet_id
    pub_subnet_id = module.vpc.pub_subnet_id
    security_group_ids = module.vpc.security_group_id
  
}
