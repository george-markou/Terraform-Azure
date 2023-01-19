resource "azurerm_private_dns_resolver" "pvdnsresolver" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  virtual_network_id  = var.virtual_network_id
}


resource "azurerm_private_dns_resolver_inbound_endpoint" "pvdnsresolverinbound" {
  name                    = var.inbound_endpoint_name
  private_dns_resolver_id = azurerm_private_dns_resolver.pvdnsresolver.id
  location                = azurerm_private_dns_resolver.pvdnsresolver.location
  ip_configurations {
    private_ip_allocation_method = "Dynamic"
    subnet_id                    = var.inbound_subnet_id
  }
}

resource "azurerm_private_dns_resolver_outbound_endpoint" "pvdnsresolveroutbound" {
  name                    = var.outbound_endpoint_name
  private_dns_resolver_id = azurerm_private_dns_resolver.pvdnsresolver.id
  location                = azurerm_private_dns_resolver.pvdnsresolver.location
  subnet_id               = var.outbound_subnet_id
}

resource "azurerm_private_dns_resolver_dns_forwarding_ruleset" "pvdnsresolverruleset" {
  name                    = var.ruleset_name
  resource_group_name     = var.resource_group_name
  private_dns_resolver_outbound_endpoint_ids = [azurerm_private_dns_resolver_outbound_endpoint.pvdnsresolveroutbound.id]
  location                = azurerm_private_dns_resolver.pvdnsresolver.location

}

resource "azurerm_private_dns_resolver_virtual_network_link" "pvdnsresolvernetworklink" {
  name                      = var.network_link_name
  dns_forwarding_ruleset_id = azurerm_private_dns_resolver_dns_forwarding_ruleset.pvdnsresolverruleset.id
  virtual_network_id        = var.virtual_network_id
  metadata = {
    key = "value"
  }
}
