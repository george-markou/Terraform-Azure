output "ruleset_id" {
  description = "The id of the dns forwarding ruleset"
  value = azurerm_private_dns_resolver_dns_forwarding_ruleset.pvdnsresolverruleset.id
}
