variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-2"
}

variable "profile" {
  type        = string
  description = "Profile"
  default     = "default"
}

variable "environment" {
  type    = string
  default = "production"
}

