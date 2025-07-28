terraform {
  backend "s3" {
    bucket         = "terraform-backend-sgx-poc"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}
