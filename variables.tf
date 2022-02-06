variable "tf" {
  type = object({
    name          = string
    shortname     = string
    env           = string
    fullname      = string
    fullshortname = string
  })
}

variable "profile" {
  type    = string
  default = null
}

variable "region" {
  type    = string
}

variable "hostedzone_id" {
  type = string
}

variable "domain" {
  type = string
}

variable "subdomain" {
  type = string
}

variable "global" {
  type = bool
  default = false
}
