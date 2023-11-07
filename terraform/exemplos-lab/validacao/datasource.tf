data "aws_ami" "example" {
  filter {
    name   = "image-id"
    values = [var.image_id]
  }
}