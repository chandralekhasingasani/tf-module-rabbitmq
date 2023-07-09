resource "aws_route53_record" "component" {
  zone_id = var.PRIVATE_HOSTED_ZONE_ID
  name    = "${var.COMPONENT}-${var.ENV}"
  type    = "CNAME"
  ttl     = 300
  records = [aws_spot_instance_request.spot.private_ip]
}