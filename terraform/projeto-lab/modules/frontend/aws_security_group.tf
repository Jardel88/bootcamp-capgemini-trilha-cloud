resource "aws_security_group" "elb" {
  name_prefix = format("%s_sg_elb_", local.prefix_name)
  vpc_id      = var.aws_vpc

  dynamic "ingress" {
    for_each = local.security_elb_rules_ingress
    content {
      description     = ingress.value.description
      from_port       = ingress.value.from_port
      to_port         = ingress.value.to_port
      protocol        = ingress.value.protocol
      cidr_blocks     = ingress.value.cidr_blocks
      security_groups = ingress.value.security_groups
    }
  }

  dynamic "egress" {
    for_each = local.security_elb_rules_egress
    content {
      description     = egress.value.description
      from_port       = egress.value.from_port
      to_port         = egress.value.to_port
      protocol        = egress.value.protocol
      cidr_blocks     = egress.value.cidr_blocks
      security_groups = egress.value.security_groups
    }
  }

  lifecycle {
    create_before_destroy = true
  }

  tags = merge(
    local.common_tags,
    {
      Name = format("%s_sg_elb", local.prefix_name)
    },
  )
}

resource "aws_security_group" "asg" {
  name_prefix = format("%s_sg_asg_", local.prefix_name)
  vpc_id      = var.aws_vpc

  ingress {
    description     = "Access from Elastic Load Balancer"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.elb.id]
  }

  dynamic "ingress" {
    for_each = local.security_asg_rules_ingress
    content {
      description     = ingress.value.description
      from_port       = ingress.value.from_port
      to_port         = ingress.value.to_port
      protocol        = ingress.value.protocol
      cidr_blocks     = ingress.value.cidr_blocks
      security_groups = ingress.value.security_groups
    }
  }

  dynamic "egress" {
    for_each = local.security_asg_rules_egress
    content {
      description     = egress.value.description
      from_port       = egress.value.from_port
      to_port         = egress.value.to_port
      protocol        = egress.value.protocol
      cidr_blocks     = egress.value.cidr_blocks
      security_groups = egress.value.security_groups
    }
  }

  lifecycle {
    create_before_destroy = true
  }

  tags = merge(
    local.common_tags,
    {
      Name = format("%s_sg_asg", local.prefix_name)
    },
  )
}