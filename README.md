Terraform Azure Private DNS Zone Module
This Terraform module helps you create a private DNS zone in Azure, along with all the necessary resources like a virtual network link, DNS record sets, and permissions.

Usage
You can use this module in your Terraform configuration by including it as a module and providing the required input variables. Here is an example of how to use the module to create a new Private DNS Zone:

hcl
Copy code
module "private_dns_zone" {
  source                    = "github.com/george-markou/Terraform-Azure//Network/privateDnsZone"
  resource_group_name       = "my-resource-group"
  virtual_network_name      = "my-vnet"
  private_dns_zone_name     = "myprivatednszone.local"
  private_dns_zone_location = "westus2"
  dns_records               = [
    {
      name    = "my-record"
      type    = "A"
      records = ["10.0.0.1", "10.0.0.2"]
    }
  ]
}
This example creates a new Private DNS Zone called myprivatednszone.local in the westus2 region and attaches it to the virtual network called my-vnet. It also creates an A record set called my-record with two IP addresses.

Input Variables
The module accepts the following input variables:

Variable	Description	Type	Required
resource_group_name	The name of the resource group in which to create the Private DNS Zone.	string	Yes
virtual_network_name	The name of the virtual network to which the Private DNS Zone should be attached.	string	Yes
private_dns_zone_name	The name of the Private DNS Zone to create or attach to.	string	Yes
private_dns_zone_location	The location of the Private DNS Zone.	string	Yes
dns_records	A list of DNS record sets to add to the Private DNS Zone. Each item in the list must be an object with the name, type, and records attributes.	list(object({name = string, type = string, records = list(string)}))	No
Output Values
The module exports the following output values:

Output	Description
private_dns_zone_id	The ID of the Private DNS Zone.
private_dns_zone_name	The name of the Private DNS Zone.
virtual_network_link_id	The ID of the virtual network link.
Authors
This Terraform module is maintained by George Markou.

License
This module is open source software licensed under the MIT License.
