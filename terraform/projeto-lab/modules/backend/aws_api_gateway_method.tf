resource "aws_api_gateway_method" "path1" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_resource.path1.id
  http_method   = "POST"
  authorization = "NONE"
}

resource "aws_api_gateway_method" "path2" {
  rest_api_id   = aws_api_gateway_rest_api.api.id
  resource_id   = aws_api_gateway_resource.path2.id
  http_method   = "GET"
  authorization = "NONE"
}