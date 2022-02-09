variable "tf" {
  type = object({
    name          = string
    shortname     = string
    env           = string
    fullname      = string
    fullshortname = string
  })
}

variable "hostedzone_id" {
  type = string
}

variable "domain" {
  type = string
}

variable "subdomain" {
  type    = string
  default = ""
}

locals {
  domain_name = var.subdomain != "" ? "${var.subdomain}.${var.domain}" : var.domain
}
