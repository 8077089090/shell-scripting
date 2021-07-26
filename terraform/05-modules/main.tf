module "sg" {
  source = "./sg"
}

module "ec2" {
  source = "./ec2"
  SG_ID = module.sg.SG_ID
}

module "ec2-1" {
  source = "./ec2-1"
  SG_ID = module.sg.SG_ID
}

provider "aws" {
  region  = "us-east-1"
}