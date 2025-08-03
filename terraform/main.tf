provider "aws" {
  region = "us-east-2"
}

module "vpc" {
  source     = "git::https://github.com/Bandarisandeep26/Terraform-Modules.git//modules/vpc?ref=main"
  vpc_cidr = var.vpc_cidr
  name       = var.vpc_name
  public_subnet_cidrs = var.public_subnet_cidrs
  azs                 = var.azs
}

module "web_sg" {
  source      = "git::https://github.com/Bandarisandeep26/Terraform-Modules.git//modules/security-group?ref=main"
  name        = "web-sg"
  description = "Web server SG"
  vpc_id      = module.vpc.vpc_id

  ingress_rules = var.ingress_rules
  egress_rules  = var.egress_rules
}

module "s3" {
  source      = "git::https://github.com/Bandarisandeep26/Terraform-Modules.git//modules/s3?ref=main" 
  bucket_count      = var.bucket_count
  bucket_name_prefix = var.bucket_name_prefix
  tags        = var.tags
}

module "ec2" {
  source             = "git::https://github.com/Bandarisandeep26/Terraform-Modules.git//modules/ec2?ref=main"
  ami_id             = var.ami_id
  instance_count     = var.instance_count
  instance_type      = var.instance_type
  subnet_id          = module.vpc.public_subnet_ids[0]
  security_group_ids = [module.web_sg.security_group_id]
  key_name           = var.key_name
  tags               = var.tags
}
