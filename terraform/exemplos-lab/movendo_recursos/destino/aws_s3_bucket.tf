resource "aws_s3_bucket" "novo" {
  bucket = "add-my-bucket"
  tags = {
    "environment" = "dev"
  }
}