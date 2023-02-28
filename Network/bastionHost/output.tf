output "bastion_name" {
  description = "The name of the bastion resource"
  value = azurerm_bastion_host.bastion.name
}

output "bastion_id" {
  description = "The ID of the Bastion Host."
  value = azurerm_bastion_host.bastion.name
}

output "dns_name" {
  description = "The FQDN for the Bastion Host."
  value = azurerm_bastion_host.bastion.dns_name
}

output "pip_id" {
  description = "The FQDN for the Bastion Host."
  value = azurerm_public_ip.pip.id
}

output "pip_address" {
  description = "The IP address value that was allocated."
  value = azurerm_public_ip.pip.ip_address
}
