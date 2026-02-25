module "vpc" {
  source            = "./modules/vpc"
  vpc_cidr_block    = "192.168.0.0/16"
  subnet_cidr_block = "192.168.0.0/22"
  az                = "ap-southeast-1a"
  public_access     = true
}

module "ec2" {
  source         = "./modules/ec2"
  ami_id         = "ami-0ac0e4288aa341886"
  ins_type       = "t3.micro"
  key            = "ssh-key"
  subnet         = module.vpc.subnet_id
  security_group = module.vpc.security_group

}
