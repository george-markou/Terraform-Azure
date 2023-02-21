output "ddos_plan_name" {
  value = azurerm_network_ddos_protection_plan.ddosplan.name
  description = "The name of the Network DDoS Protection Plan."
}

output "ddos_plan_id" {
  value = azurerm_network_ddos_protection_plan.ddosplan.id
  description = "The id of the Network DDoS Protection Plan."
}