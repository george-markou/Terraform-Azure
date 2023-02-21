resource "azurerm_recovery_services_vault" "vault" {
  name                = var.recover_service_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  storage_mode_type   = var.storage_mode_type
  public_network_access_enabled = var.public_network_access_enabled
  soft_delete_enabled = true
    identity {
    type = "SystemAssigned"
  }

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}
