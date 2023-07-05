
# Provider configuration

provider "aws" {
  region      = "us-east-2"
  access_key   = "AKIARQ22MT2VZH2CURUD"
  secret_key  = "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"
}

# VPC creation

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "MyVPC"
  }
}
