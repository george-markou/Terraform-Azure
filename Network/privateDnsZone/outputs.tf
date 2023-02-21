output "id" {
  value = azurerm_private_dns_zone.pvdns[*].id
  description = "The Private DNS Zone ID."
}
