resource "aws_security_group" "swap" {
  name        = "allow http swap"
  description = "Allow http"
  vpc_id      = "vpc-025ba379ccfb29610"

  ingress {
    description      = "TLS from VPC"
    from_port        = 80 
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
