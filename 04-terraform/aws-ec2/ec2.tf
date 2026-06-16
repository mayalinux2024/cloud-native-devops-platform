resource "aws_instance" "devops_server" {
  ami = "ami-088fd024fe7aa5070"
  instance_type = "t3.micro"

  key_name = "devops"

vpc_security_group_ids = [aws_security_group.devops_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    EOF

  tags = {
    Name = "terraform-devops-server"
  }
}
