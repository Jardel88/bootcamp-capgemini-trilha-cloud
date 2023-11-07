resource "aws_s3_bucket" "mybucket" {
  tags = {
    "environment" = "dev"
  }
}