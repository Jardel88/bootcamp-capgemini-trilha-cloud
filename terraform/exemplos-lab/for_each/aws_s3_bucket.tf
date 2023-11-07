resource "aws_s3_bucket" "mybucket" {
  for_each = toset(var.bucket_name) 
  bucket = each.key

  tags = {
    "environment" = each.key
  }
}