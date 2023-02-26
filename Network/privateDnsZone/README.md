<h1>Terraform Azure Private DNS Zone Module</h1>
This Terraform module helps you create a single or mutliple private DNS zone in Azure, along with all the necessary resources like a virtual network.

<h2>Usage</h2>
You can use this module in your Terraform configuration by including it as a module and providing the required input variables. Here is an example of how to use the module to create two Private DNS Zones and link them to a virtual network:

```hcl
module "private_dns_zone" {
  source                    = "github.com/george-markou/Terraform-Azure//Network/privateDnsZone"
  resource_group_name       = "rgtest"
  dns_zone_name     = [
  "myfirstprivatednszone.local",
  "mysecondprivatednszone.local",
  ]
  network_link_name = "link-to-vnet"
  virtual_network_id = "/subscriptions/<subcription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Network/virtualNetworks/<vnet-name>"
  tags = {
    "Environment" = "Prod"
  }
}
```

This example creates two new Private DNS Zones and attaches them to a virtual network.

<h2>Input Variables</h2>
The module accepts the following input variables:

|Variable |	Description| Type|	Required|
|---|---|---|---|
|`resource_group_name`|	The name of the resource group in which to create the Private DNS Zone.|	string|	Yes|
|`dns_zone_name`|	An array of dns zones to be created.|	list(string)|	Yes|
|`network_link_name`|	The network link name.|	string|	Yes|
|`virtual_network_id`|	The id of the virtual network.|	string|	Yes
|`tags`|	The location of the Private DNS Zone.|	map(string)|	No|

<h2>Output Values</h2>>
The module exports the following output values:

|Output|	Description|
|---|---|
|`id`|	The ID of the Private DNS Zone.|

<h2>Authors</h2>
This Terraform module is maintained by George Markou.

<h2>License</h2>
This module is open source software licensed under the MIT License.
