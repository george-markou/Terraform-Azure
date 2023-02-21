output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
  description = "The name of the virtual network."
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
  description = "The id of the virtual network."
}

output "subnet_id" {
  value = azurerm_virtual_network.vnet.subnet[*].id
  description = "The list of the virtual network subnets."
}