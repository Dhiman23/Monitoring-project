#this module is for security group
resource "aws_security_group" "ALL-server-sg" {
  name        = "web"
  description = "this is for the monitoring server"


  ingress {
    description = "custom port"
    from_port   = 587
    to_port     = 587
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "port for ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  ingress {
    description = "port for mail notification"
    from_port   = 465
    to_port     = 465
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    description = "port for http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "port for https"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Custom"
    from_port   = 3000
    to_port     = 10000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SMTP"
    from_port   = 25
    to_port     = 25
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Custom"
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "Monitoring-sg"
  }
}

resource "aws_instance" "monitoring" {

  ami             = var.OS-east-1
  instance_type   = "t2.medium"
  security_groups = [aws_security_group.ALL-server-sg.name]
  key_name        = "Mkey"
  user_data       = templatefile("Monitoring.sh", {})

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = "Monitoring-server"
  }

  associate_public_ip_address = true

}


resource "aws_instance" "vm" {

  ami             = var.OS-east-1
  instance_type   = "t2.medium"
  security_groups = [aws_security_group.ALL-server-sg.name]
  key_name        = "Mkey"
  user_data       = templatefile("VM.sh", {})

  root_block_device {
    volume_size = 15
    volume_type = "gp3"
  }

  tags = {
    Name = "VM-server"
  }

  associate_public_ip_address = true

}



