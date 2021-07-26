resource "aws_instance" "terraforminstance" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t3.medium"
  vpc_security_group_ids = [ var.SG_ID ]

  tags                   = {
    Name                  = "terraforminstance"
  }
}

variable "SG_ID" {}