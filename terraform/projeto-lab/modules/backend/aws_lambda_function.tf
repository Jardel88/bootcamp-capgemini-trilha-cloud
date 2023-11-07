resource "aws_lambda_function" "lambda1" {
  function_name    = format("%s-lambda1", local.prefix_name)
  role             = aws_iam_role.lambda.arn
  runtime          = "python3.8"
  filename         = data.archive_file.code.output_path
  handler          = "lambda_function.lambda_handler"
  source_code_hash = data.archive_file.code.output_base64sha256
  publish          = true

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = [aws_security_group.lambda.id]
  }

  tags = merge(
    local.common_tags,
    {
      #key = value
    },
  )
}

resource "aws_lambda_function" "lambda2" {
  function_name    = format("%s-lambda2", local.prefix_name)
  role             = aws_iam_role.lambda.arn
  runtime          = "python3.8"
  filename         = data.archive_file.code.output_path
  handler          = "lambda_function.lambda_handler"
  source_code_hash = data.archive_file.code.output_base64sha256
  publish          = true

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = [aws_security_group.lambda.id]
  }

  tags = merge(
    local.common_tags,
    {
      #key = value
    },
  )
}