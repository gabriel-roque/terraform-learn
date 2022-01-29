locals {
  ip_filepath = "ips.json"

  common_tags = {
    Service     = "s3-bucket"
    Owner       = "Gabriel"
    Environment = var.environment
  }
}
