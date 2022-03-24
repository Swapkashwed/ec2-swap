resource "aws_instance" "web" {
  ami           = "ami-04893cdb768d0f9ee"
  instance_type = "t2.micro"
  subnet_id ="subnet-0c5ee886f42660bd3"
  key_name ="ec2 re"
  
  tags = {
    Name = "swap"
  }
  vpc_security_group_ids =[aws_security_group.swap.id]
user_data = <<-EOF
              #!/bin/bash
                yum update -y
                yum install -y httpd
                systemctl start httpd.service
                systemctl enable httpd.service
                echo "Welcome to Terraform Demo!!!, I am $(hostname -f) hosted by Terraform" > /var/www/html/index.html
              EOF
}
