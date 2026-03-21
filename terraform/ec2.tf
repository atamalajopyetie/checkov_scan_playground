resource "aws_security_group" "bad_sg" {
  name        = "allow_all_traffic"
  description = "Allows all inbound traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Missing: restricted ports, no 0.0.0.0/0 rules