resource "azurerm_firewall_policy" "policy" {
  name                      = var.name
  resource_group_name       = var.resource_group_name
  location                  = var.location
  threat_intelligence_mode  = var.threat_intelligence_mode
  sku                       = var.sku
}