resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
    dynamic "ddos_protection_plan" {
    for_each = var.ddos_plan_id != null ? [1] : []
    content {
        id = var.ddos_plan_id
        enable = true
      }
  }
  dynamic subnet {
    for_each = var.subnet
    content {
      name = subnet.value.name
      address_prefix = subnet.value.address_prefix
      security_group = subnet.value.security_group
    }
  }

  }

