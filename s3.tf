# Resource Block
resource "aws_s3_bucket" "my-bucket" {
  bucket = "terraform-bucket-sritesh-1234"  # Change to a unique name
  tags = {
    Name = "terraform-bucket-sritesh-1234"
  }
}
