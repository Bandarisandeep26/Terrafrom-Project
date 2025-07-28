provider "aws" {
  region = "us-east-2"
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
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  key_name           = var.key_name
  tags               = var.tags
}
