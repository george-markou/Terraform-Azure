resource "azurerm_private_dns_resolver_forwarding_rule" "rule" {
  name                      = var.name
  dns_forwarding_ruleset_id = var.dns_forwarding_ruleset_id
  domain_name               = var.domain
  enabled                   = var.enabled
  dynamic target_dns_servers {
    for_each = var.target_dns_servers
    content {
    ip_address = target_dns_servers.value.ip_address
    port       = target_dns_servers.value.port
   }
  }
  metadata = {
    key = "value"
  }
}
