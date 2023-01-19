resource "azurerm_virtual_network_peering" "vnet_peering" {
  name                      = var.peering_name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.vnet_name
  remote_virtual_network_id = var.remote_network_id
  allow_virtual_network_access = var.allow_virtual_network_access
  allow_forwarded_traffic      = var.allow_forwarded_traffic
  use_remote_gateways = var.use_remote_gateways
  allow_gateway_transit = var.allow_gateway_transit
}
