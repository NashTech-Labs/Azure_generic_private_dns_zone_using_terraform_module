private_dns_zone_virtual_network_link_name = "privatedns"

private_dns_zones = {
  "zone1.example.com" = {
    resource_group_name = "us-prov-central-us-internal-networks"
  }
  "zone2.example.com" = {
    resource_group_name = "us-prov-central-us-internal-networks"
  }
}

# Specify the private DNS zone virtual network links
private_dns_zone_virtual_network_links = {
  "link1" = {
    resource_group_name     = "us-prov-central-us-internal-networks"
    virtual_network_id      = "/subscriptions/subscription'id/us-prov-central-us-internal-networks/providers/Microsoft.Network/virtualNetworks/us-prov-central-us-internal-vnet"
    private_dns_zone_name   = "zone1.example.com"
  }
  "link2" = {
    resource_group_name     = "us-prov-central-us-internal-networks"
    virtual_network_id      = "/subscriptions/subscription'id/resourceGroups/us-prov-central-us-internal-networks/providers/Microsoft.Network/virtualNetworks/us-prov-central-us-internal-vnet"
    private_dns_zone_name   = "zone2.example.com"
  }

}
