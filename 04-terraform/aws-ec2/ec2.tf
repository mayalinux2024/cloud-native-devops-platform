resource "aws_instance" "devops_server" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu (us-east-1)
  instance_type = "t3.micro"

  vpc_security_group_ids = [aws_security_group.devops_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install -y docker.io
    systemctl start docker
    systemctl enable docker

    docker pull mayalinux/cloud-native-app:latest

    docker run -d -p 5000:5000 --name flask-app mayalinux/cloud-native-app:latest
  EOF

  tags = {
    Name = "terraform-devops-server"
  }
}
