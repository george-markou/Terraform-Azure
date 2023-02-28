<h1>Terraform Azure Bastion Host Module</h1>
This Terraform module deploys an Azure Bastion Host along with a Public IP Address, which provides secure and seamless Remote Desktop Protocol (RDP) and Secure Shell (SSH) access to virtual machines (VMs) inside a Virtual Network (VNet).
<br></br>
<h2>Usage</h2>
To use this module, include the following code in your Terraform configuration:

```hcl
module "bastion_host" {
  source                = "github.com/george-markou/Terraform-Azure//Network/bastionHost"
  resource_group_name   = "my-resource-group"
  location              = "eastus"
  pip_name              = "my-bas-pip-01"
  bastion_name          = "my-bas-01
  subnet_id             = "my-subnet"
  copy_paste_enabled    = true
  file_copy_enabled     = false
  ip_connect_enabled    = true
  shareable_link_enabled = true
  sku                   = "Standard"
  tags = {
    environment = "dev"
    owner       = "me"
  }
}
```
<br></br>
<h2>Input Variables</h2>
This module requires the following inputs:

|Variable |	Description| Type|	Required|
|---|---|---|---|
|`resource_group_name`|	The name of the Resource Group where Bastion Host and Public IP should exist.|	string|	Yes|
|`location`|	Specifies the supported Azure location.|	string|	Yes|
|`pip_name`|	Specifies the name of the Public IP.|	string|	Yes|
|`bastion_name`|	Specifies the name of the Bastion Host.|	string|	Yes|
| `subnet_id`| Reference to a subnet in which this Bastion Host has been created. | string| Yes|
| `copy_paste_enabled`| Is Copy/Paste feature enabled for the Bastion Host. Defaults to true.| string| No|
| `file_copy_enabled`| Is File Copy feature enabled for the Bastion Host. Defaults to false.| string| No|
| `ip_connect_enabled`|Is IP Connect feature enabled for the Bastion Host. Defaults to false.| string| No|
| `shareable_link_enabled`|Is Shareable Link feature enabled for the Bastion Host. Defaults to false.| string| No|
| `sku`|The SKU of the Bastion Host. Accepted values are Basic and Standard. Defaults to Basic.| string| No|
|`tags`|	A map of tags to apply to the resources created by this module.|	map(string)|	No|

<h2>Output Values</h2>
This module exports the following outputs:

|Output|	Description|
|---|---|
|`name`|	The name of the Azure Bastion Host resource.|

<h2>Contributing</h2>
Contributions to this module are welcome! If you find a bug or want to suggest a new feature, please open an issue or submit a pull request.

<h2>Authors</h2>
This Terraform module is maintained by George Markou.

<h2>License</h2>
This module is open source software licensed under the MIT License.
