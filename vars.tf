variable "client_id" {}
variable "client_secret" {}

variable "location" {
  type    = string
  default = "West US 2"
}

variable "dns_prefix" {
    default = "democluster"
}
