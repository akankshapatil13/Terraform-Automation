terraform {
  backend "s3" {
    bucket = "mydev-tf-state-bucket-111"
    key = "Vpc"
    region = "us-east-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
