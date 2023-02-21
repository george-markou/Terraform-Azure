resource "azurerm_private_dns_zone" "pvdns" {
  count = var.use_for_each ? 0 : length(var.dns_zone_name)
  
  name                = var.dns_zone_name[count.index]
  resource_group_name = var.resource_group_name
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "example" {
  count = var.use_for_each ? 0 : length(var.dns_zone_name)

  name                  = var.network_link_name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = var.dns_zone_name[count.index]
  virtual_network_id    = var.virtual_network_id

lifecycle {
    ignore_changes = [
      tags,
    ]
  }

   depends_on = [
    azurerm_private_dns_zone.pvdns
 ]
}