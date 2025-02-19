# DynamoDB Table

resource "aws_dynamodb_table" "name" {
  name = "${var.my-env}-terraform-table-sritesh-1234"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"
  attribute {
    name = "id"
    type = "S"
  }
}