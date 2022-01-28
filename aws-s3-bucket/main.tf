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
  region  = "us-east-2"
  profile = "default"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-342345435345323"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManageBy    = "Terraform"
    CreatedBy   = "Gabriel Roque"
  }
}
