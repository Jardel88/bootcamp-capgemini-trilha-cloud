resource "aws_s3_bucket" "mybucket" {
  count = 2
  bucket = "BUCKET-NAME-${count.index}"
  tags = {
    "environment" = "dev"
  }
}