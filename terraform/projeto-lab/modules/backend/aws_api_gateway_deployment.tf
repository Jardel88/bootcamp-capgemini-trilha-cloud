resource "aws_api_gateway_deployment" "main" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  stage_name  = "main"
  depends_on = [
    aws_api_gateway_method.path1,
    aws_api_gateway_integration.path1,
    aws_api_gateway_method.path2,
    aws_api_gateway_integration.path2
  ]
}