# VPC Values
vpc_cidr = "10.0.0.0/16"
vpc_name = "main-vpc"
# Security Group Values
ingress_rules = [
  {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

egress_rules = [
  {
    description = "Allow all"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]


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
