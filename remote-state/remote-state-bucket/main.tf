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

resource "aws_s3_bucket" "remote-state" {
  bucket        = "tfstate-${data.aws_caller_identity.current.account_id}"
  force_destroy = true

  versioning {
    enabled = true
  }
}

data "aws_caller_identity" "current" {}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote-state.arn
}
