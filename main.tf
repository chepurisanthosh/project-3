
# Provider configuration

provider "aws" {
  region      = "us-east-2"
  access_key   = "AKIARQ22MT2VZH2CURUD"
  secret_key  = "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"
}
#resource : what changes you want to do

resource "aws_instance" "myec2" {
  ami               = "ami-024e6efaf93d85776"
  instance_type     = "t2.micro"

  tags = {
    Name = "Terraform1"
  }
}

resource "aws_eip" "myeip" {
  domain = "vpc"
}
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.myeip.id
}
