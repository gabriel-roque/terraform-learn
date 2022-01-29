terraform {
  required_version = "1.1.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "3.74.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.profile
}

resource "aws_instance" "ec2-instance" {
  ami           = var.instace_ami
  instance_type = var.instance_type

  key_name = "gmiranda"

  tags = var.instance_tags

  vpc_security_group_ids = [aws_security_group.security-group-ssh.id]
}
