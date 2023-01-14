output "id" {
  description = "The ID of the Subscription."
  value = azurerm_subscription.sub.id
}

output "tenant_id" {
  description = "The ID of the Tenant to which the subscription belongs."
  value = azurerm_subscription.sub.tenant_id
}