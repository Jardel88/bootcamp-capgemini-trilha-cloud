data "archive_file" "code" {
  type        = "zip"
  source_file = "lambda_function.py"
  output_path = "outputs/lambda_function.zip"
}