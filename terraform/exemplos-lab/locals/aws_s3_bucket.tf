resource "aws_s3_bucket" "mybucket01" {
  bucket = "${local.prefix_bucket}-mybucket-01"
  tags = {
    "environment" = "dev"
  }
}

resource "aws_s3_bucket" "mybucket02" {
  bucket = "${local.prefix_bucket}-mybucket-02"
  tags = {
    "environment" = "dev"
  }
}
