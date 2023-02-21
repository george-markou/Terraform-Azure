output "nsg_name" {
  value = azurerm_network_security_group.nsg.name
  description = "The name of the NSG."
}

output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
  description = "The id of the NSG."
}
