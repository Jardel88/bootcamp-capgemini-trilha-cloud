resource "aws_db_instance" "default" {
  identifier_prefix      = format("%s-instance-", local.prefix_db_name)
  allocated_storage      = var.storage
  max_allocated_storage  = var.storage * 5
  db_name                = var.service
  engine                 = var.engine
  engine_version         = lookup(local.db_info, var.engine)["engine_version"]
  instance_class         = lookup(local.instance_class, var.environment)
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = aws_db_parameter_group.default.name
  skip_final_snapshot    = true
  copy_tags_to_snapshot  = true
  db_subnet_group_name   = aws_db_subnet_group.db_sg.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  domain                 = lookup(local.db_domain_info, "domain")
  domain_iam_role_name   = lookup(local.db_domain_info, "domain_iam_role_name")

  tags = merge(
    local.common_tags,
    {
      #key = value
    },
  )
}