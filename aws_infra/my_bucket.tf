# S3 Bucket

# Resource Block
resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my-env}-terraform-bucket-sritesh-1234"  # Change to a unique name
  tags = {
    Name = "${var.my-env}-terraform-bucket-sritesh-1234"
    environment = var.my-env
  }
}
