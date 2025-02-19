variable "dynamodb_table_name" {
  type = string
  default = "terraform-sri-table"
  description = "This is table name for DynamoDB"
}

variable "ami_id" {
  default = "ami-0cb91c7de36eed2cb"
  type = string
  description = "This is ami id for EC2 (ubuntu)"

}