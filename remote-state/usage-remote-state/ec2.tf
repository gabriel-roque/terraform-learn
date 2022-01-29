resource "aws_instance" "remote-state-ec2" {
  ami           = var.instace_ami
  instance_type = var.instance_type

  key_name = "gmiranda"

  tags = {
    Test = "anyValue"
  }
}
