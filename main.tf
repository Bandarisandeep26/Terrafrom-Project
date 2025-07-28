provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source      = "git::https://github.com/YOUR_ORG_OR_USER/s3-module-repo.git//?ref=main"
  bucket_name = var.bucket_name
  tags        = var.tags
}

module "ec2" {
  source             = "git::https://github.com/YOUR_ORG_OR_USER/ec2-module-repo.git//?ref=main"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  key_name           = var.key_name
  tags               = var.tags
}
