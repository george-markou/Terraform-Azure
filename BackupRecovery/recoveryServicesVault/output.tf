output "name" {
  description = "The name of the Recovery Service Vault."
  value = azurerm_recovery_services_vault.vault.name
}

output "id" {
  description = "The ID of the Recovery Service Vault."
  value = azurerm_recovery_services_vault.vault.id
}