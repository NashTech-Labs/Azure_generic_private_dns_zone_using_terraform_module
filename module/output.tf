output "private_dns_zone_ids" {
  value = [for dnszone in azurerm_private_dns_zone.dnszone : dnszone.id]
}

output "private_dns_zone_virtual_network_link_ids" {
  value = [for vnl in azurerm_private_dns_zone_virtual_network_link.vnl : vnl.id]
}