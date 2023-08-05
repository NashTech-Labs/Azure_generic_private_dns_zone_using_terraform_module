variable "private_dns_zones" {
  description = "A map of private DNS zone configurations."
  type = map(object({
    resource_group_name = string
  }))
  default = {}
}

variable "private_dns_zone_virtual_network_links" {
  description = "A map of private DNS zone virtual network link configurations."
  type = map(object({
    resource_group_name     = string
    virtual_network_id      = string
    private_dns_zone_name   = string
  }))
  default = {}
}

variable "private_dns_zone_virtual_network_link_name" {
  type = string
  # default = privatedns
}
