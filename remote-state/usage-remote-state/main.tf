terraform {
  required_version = "1.1.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "3.74.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-043480361200"
    key     = "remote-state/usage-remote-state/terraform.tfstate"
    region  = "us-east-2"
    profile = "default"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.profile
}

