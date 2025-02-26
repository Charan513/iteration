resource "aws_route53_record" "expense" {
#   count = 3
  count = length(var.instances)
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"          # Interpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[count.index].private_ip]      # List type
  allow_overwrite = true
}

resource "aws_route53_record" "frontend" {
  zone_id = var.zone_id
  name    = "${var.domain_name}"          
  type    = "A"
  ttl     = 1
  records = [aws_instance.expense[2].public_ip]      # List type
  allow_overwrite = true
}