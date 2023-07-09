resource "aws_route53_record" "component" {
  zone_id = var.PRIVATE_HOSTED_ZONE_ID
  name    = "${var.COMPONENT}-${var.ENV}"
  type    = "A"
  ttl     = 300
  records = local.ALL_INSTANCE_IPS
}