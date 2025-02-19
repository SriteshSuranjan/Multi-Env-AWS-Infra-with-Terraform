# Key Pair
resource "aws_key_pair" "deployer" {
  key_name = "tes-terra-key"
  public_key = file("D:/Private/Terraform-Practice/terra-key.pub")
}

# Default VPC
resource "aws_default_vpc" "default" {
  
}

# Security Group
resource "aws_security_group" "terrasecurity" {
  name = "allow ports"
  description = "This is to open Ports for EC2 instance"
  vpc_id = aws_default_vpc.default.id # interpolation

  # incoming
  ingress {
    description = "This is for SSH"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outgoing
  egress {
    description = "This is for outgoing internet"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my-instance" {
  ami = var.ami_id # ubuntu
  instance_type = "t2.micro" # free tier
  key_name = aws_key_pair.deployer.key_name # key pair
  security_groups = [aws_security_group.terrasecurity.name] # SG
  tags = {
    Name = "terra-automate" # Name
  }
}