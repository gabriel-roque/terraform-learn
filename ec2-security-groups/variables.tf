# Can pass variable argument in command with TF_VAR_<name>
# terramform plan -var="<name_var>"

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

variable "instace_ami" {
  type    = string
  default = "ami-0231217be14a6f3ba"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_tags" {
  type = map(string)
  default = {
    "Name"  = "ec2-instance"
    "Power" = "t2-micro"
  }
}
