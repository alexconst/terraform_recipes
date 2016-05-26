variable "key_name" {
  description = "Name of the SSH keypair to use in AWS."
  default = "developer"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default = "eu-west-1"
}

# debian-jessie-8.4 (x64)
variable "aws_amis" {
  default = {
    "eu-west-1" = "ami-e079f893"
  }
}

