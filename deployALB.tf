data "aws_acm_certificate" "default" {
  domain   = "${var.environment}.notarize.com"
  statuses = ["ISSUED"]
}

resource "aws_alb" "public" {
  internal           = false
  load_balancer_type = "application"
  name               = "${var.environment}-api-service-ext-alb"
  security_groups    = [aws_security_group.alb.id]
  subnets            = data.aws_subnet_ids.public.ids
  tags               = module.label.tags
}

resource "aws_security_group" "alb" {
  description = "ALB for api-service"
  name_prefix = "${var.environment}-api-service-sg"
  tags        = module.label.tags
  vpc_id      = data.aws_vpc.default.id
}

resource "aws_security_group_rule" "allow_all_https_ingress" {
  cidr_blocks       = ["34.195.111.71/32"]
  description       = "Allow HTTPs"
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.alb.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "allow_egress_http_service" {
  description       = "Allow HTTP"
  from_port         = 80
  protocol          = "tcp"
  cidr_blocks       = [element(values(data.aws_subnet.private), 0).cidr_block, element(values(data.aws_subnet.private), 1).cidr_block]
  security_group_id = aws_security_group.alb.id
  to_port           = 80
  type              = "egress"
}

resource "aws_alb_target_group" "main" {
  name = "${var.environment}-api-service"

  health_check {
    healthy_threshold   = "3"
    interval            = "10"
    protocol            = "HTTP"
    timeout             = "3"
    matcher             = "200-299"
    path                = "/"
    unhealthy_threshold = "2"
  }

  target_type = "ip"
  port        = "80"
  protocol    = "HTTP"
  vpc_id      = data.aws_vpc.default.id

  tags = module.label.tags

  depends_on = [aws_alb.public]
}

resource "aws_alb_listener" "https" {
  load_balancer_arn = aws_alb.public.id
  port              = "443"
  protocol          = "HTTPS"
  certificate_arn   = data.aws_acm_certificate.default.arn

  default_action {
    target_group_arn = aws_alb_target_group.main.id
    type             = "forward"
  }
}
