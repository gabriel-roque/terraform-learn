resource "aws_security_group" "security-group-ssh" {
  name        = "security-group-ssh"
  description = "Allow SSH ports"

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
