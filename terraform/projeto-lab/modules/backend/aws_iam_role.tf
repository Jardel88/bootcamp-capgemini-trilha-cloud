resource "aws_iam_role" "lambda" {
  name = format("%s-iam-role-lambda-trigger", local.prefix_name)

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = [
          "lambda.amazonaws.com",
          "apigateway.amazonaws.com"
        ]
      }
      Action = "sts:AssumeRole"
    }]
  })
}