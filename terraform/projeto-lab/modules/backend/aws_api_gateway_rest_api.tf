resource "aws_api_gateway_rest_api" "api" {
  name = format("%s-api", local.prefix_name)

  tags = merge(
    local.common_tags,
    {
      #key = value
    },
  )
}