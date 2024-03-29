/**
 * # Terraform AWS ACM Certificate and verify DNS Records
 *
 * ACM証明書及びDNS検証可能なRoute53レコードを作成します。
 */

data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

resource "aws_route53_record" "cert_validation" {
  for_each = {
    for dvo in aws_acm_certificate.certificate.domain_validation_options : dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }
  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = var.hostedzone_id
}

resource "aws_route53_record" "cert_caa" {
  allow_overwrite = true
  name            = local.domain_name
  records         = ["0 issue \"amazon.com\""]
  ttl             = 60
  type            = "CAA"
  zone_id         = var.hostedzone_id
}

resource "aws_acm_certificate" "certificate" {
  domain_name = local.domain_name
  subject_alternative_names = [
    "*.${local.domain_name}"
  ]
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}
