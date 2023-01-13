variable "location" {
  description = "(Required) The Azure Region where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created."
  type = string
}

variable "resource_group_name" {
  description = "(Required) The name of the Resource Group where the Firewall Policy should exist. Changing this forces a new Firewall Policy to be created."
  type = string
}
variable "firewall_name" {
  description = "(Required) Specifies the name of the Firewall. Changing this forces a new resource to be created."
  type = string
}

variable "firewall_pip_name" {
  description = "(Required) The Name of the Public IP Address that will be created along with the firewall."
  type = string
}

variable "allocation_method" {
  description = "(Required) Defines the allocation method for this IP address. Possible values are Static or Dynamic"
  type = string
  default = "Static"
}

variable "firewall_pip_sku" {
  description = "(Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic. Changing this forces a new resource to be created."
  type = string
  default = "Basic"
}

variable "firewall_subnet_id" {
  description = "(Optional) Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created."
  type = string
}

variable "firewall_policy_id" {
  description = "(Optional) The ID of the Firewall Policy applied to this Firewall."
  type = string
  default = null
}

variable "firewall_sku_name" {
  description = "(Required) SKU name of the Firewall. Possible values are AZFW_Hub and AZFW_VNet. Changing this forces a new resource to be created."
  type = string
  default = "AZFW_VNet"
}

variable "firewall_sku_tier" {
  description = "(Required) SKU tier of the Firewall. Possible values are Premium, Standard and Basic."
  type = string
  default = "Standard"
}
