resource "aws_api_gateway_integration" "path1" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_resource.path1.id
  http_method             = aws_api_gateway_method.path1.http_method
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.lambda1.invoke_arn
  integration_http_method = "POST"
}

resource "aws_api_gateway_integration" "path2" {
  rest_api_id             = aws_api_gateway_rest_api.api.id
  resource_id             = aws_api_gateway_resource.path2.id
  http_method             = aws_api_gateway_method.path2.http_method
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.lambda2.invoke_arn
  integration_http_method = "GET"
}