# EC2 instance

resource "aws_instance" "my-instance" {
  count = var.instance_count 
  ami = var.ami_id # ubuntu
  instance_type = var.instance_type # free tier
  tags = {
    Name = "${var.my-env}-terraform-instance-sritesh-1234" # Name
  }
}