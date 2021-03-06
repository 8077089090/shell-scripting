resource "aws_instance" "terraform_instance" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t3.micro"
  tags                   = {
    Name                 = "terraform_instance"
  }
}

provider "aws" {
         region= "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-statefile-practice"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform"
  }
}