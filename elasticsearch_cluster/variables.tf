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
    "ap-northeast-1" = "ami-d7d4c5b9"
    "ap-northeast-2" = "ami-9a03caf4"
    "ap-southeast-1" = "ami-73974210"
    "ap-southeast-2" = "ami-09daf96a"
    "eu-central-1" = "ami-ccc021a3"
    "eu-west-1" = "ami-e079f893"
    "sa-east-1" = "ami-d3ae21bf"
    "us-east-1" = "ami-c8bda8a2"
    "us-west-1" = "ami-45374b25"
    "us-west-2" = "ami-98e114f8"
  }
}

variable "elastic_port" {
  description = "Elasticsearch port"
  default = 9200
}

