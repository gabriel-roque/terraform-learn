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

resource "aws_instance" "ec2-instance-001" {
  ami           = var.instace_ami
  instance_type = var.instance_type

  key_name = "gmiranda"

  tags = var.instance_tags
}
