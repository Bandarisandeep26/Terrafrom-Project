# S3 Module Configuration
bucket_count        = 2
bucket_name_prefix  = "my-demo-bucket"

# EC2 Module Configuration
instance_count      = 2
ami_id              = "ami-08ca1d1e465fbfe0c"
instance_type       = "t3.micro"
subnet_id           = "subnet-07769dfff310228bd"
security_group_ids  = ["sg-06b5036574e68ab9e"]     
key_name            = "my-eks-key-pair"             

tags = {
  Environment = "dev"
  Project     = "Terraform-Demo"
}
