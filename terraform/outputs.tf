output "bucket_names" {
  value = module.s3.bucket_names
}

output "ec2_instance_ids" {
  value = module.ec2.instance_ids
}

output "ec2_public_ips" {
  value = module.ec2.public_ips
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}


