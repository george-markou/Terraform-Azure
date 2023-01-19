output "name" {
  description = "The name of the dns forwarding rule"
  value = azurerm_private_dns_resolver_forwarding_rule.rule.name
}
