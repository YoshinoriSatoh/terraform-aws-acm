<!-- BEGIN_TF_DOCS -->
# Terraform AWS ACM Certificate and verify DNS Records

ACM証明書及びDNS検証可能なRoute53レコードを作成します。

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=3.74.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=3.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_route53_record.cert_caa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.cert_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | n/a | `string` | n/a | yes |
| <a name="input_hostedzone_id"></a> [hostedzone\_id](#input\_hostedzone\_id) | n/a | `string` | n/a | yes |
| <a name="input_subdomain"></a> [subdomain](#input\_subdomain) | n/a | `string` | `""` | no |
| <a name="input_tf"></a> [tf](#input\_tf) | n/a | <pre>object({<br>    name          = string<br>    shortname     = string<br>    env           = string<br>    fullname      = string<br>    fullshortname = string<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate"></a> [certificate](#output\_certificate) | n/a |
<!-- END_TF_DOCS -->    