
resource "aws_instance" "terraform_instance" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [ var.SG_ID ]

  tags                   = {
    Name                  = "terraform_instance"
  }
}

variable "SG_ID" {}