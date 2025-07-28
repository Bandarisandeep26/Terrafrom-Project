variable "instance_count" {
  type        = number
  default     = 1
}

variable "bucket_count" {
  type        = number
  default     = 1
}

variable "bucket_name_prefix" {
  type        = string
  default     = "my-demo-bucket"
}


variable "ami_id" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  type        = string
}

variable "security_group_ids" {
  type        = list(string)
}

variable "key_name" {
  type        = string
}

variable "tags" {
  type        = map(string)
  default     = {}
}
