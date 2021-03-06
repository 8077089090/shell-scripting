// create resource for instance in aws with security group

resource "aws_instance" "terraform_instance" {
  ami                    = "ami-074df373d6bafa625"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]

  tags                   = {
   Name                  = "terraform_instance"
  }
}

resource "aws_security_group" "allow_ssh" {
  name                   = "allow_ssh"
description              = "allow_ssh"

  ingress {
   description           = "SSH"
   from_port             = 22
    to_port              = 22
    protocol             = "tcp"
  cidr_blocks            = ["0.0.0.0/0"]

  }

  egress {
    from_port           = 0
    to_port             = 0
    protocol            = "-1"
    cidr_blocks         = ["0.0.0.0/0"]

  }

  tags                  = {
    Name                = "allow_ssh"
  }
}

output "sg-attributes" {
   value                = aws_security_group.allow_ssh

}

output "ec2-attributes" {
  value                = aws_instance.terraform_instance

}
provider "aws" {
  region               = "us-east-1"
}