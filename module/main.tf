terraform {
  required_version = ">= 0.13"
}

provider "azurerm" {
  features {
  }
}
# data "azurerm_virtual_network" "pevnet" {
#   name                = var.virtual_network_name
#   resource_group_name = var.resource_group_vnet_name
# }

resource "azurerm_private_dns_zone" "dnszone" {
  for_each            = var.private_dns_zones
  name                = each.key
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_private_dns_zone_virtual_network_link" "vnl" {
  for_each               = var.private_dns_zone_virtual_network_links
  name                   = "${each.key}-${var.private_dns_zone_virtual_network_link_name}"
  resource_group_name    = each.value.resource_group_name
  virtual_network_id     = each.value.virtual_network_id
  private_dns_zone_name  = azurerm_private_dns_zone.dnszone[each.value.private_dns_zone_name].name
}