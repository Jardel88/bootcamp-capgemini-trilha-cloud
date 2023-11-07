resource "aws_s3_bucket" "mybucket" {
  bucket = "mybucket"
  tags = {
    "environment" = "dev"
  }
}
