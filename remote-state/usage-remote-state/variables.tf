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

variable "instace_ami" {
  type    = string
  default = "ami-0231217be14a6f3ba"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
