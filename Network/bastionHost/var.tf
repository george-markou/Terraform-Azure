variable "pip_name" {
  type = string
  description = "(Required) Specifies the name of the Public IP."
}

variable "bastion_name" {
  type = string
  description = "(Required) Specifies the name of the Bastion Host."
}

variable "location" {
  type = string
  description = "(Required) Specifies the supported Azure location where the resource exists."
}

variable "resource_group_name" {
  type = string
  description = "(Required) The name of the resource group in which to create the Bastion Host."
}

variable "subnet_id" {
  type = string
  description = "(Required) The id of the AzureBastionSubnet."
}

variable "copy_paste_enabled" {
  type = bool
  description = "(Optional) Is Copy/Paste feature enabled for the Bastion Host. Defaults to true."
  default = null
}

variable "file_copy_enabled" {
  type = bool
  description = "(Optional) Is File Copy feature enabled for the Bastion Host. Defaults to false."
  default = null
}

variable "sku" {
  type = string
  description = "(Optional) The SKU of the Bastion Host. Accepted values are Basic and Standard. Defaults to Basic."
  default = null
}

variable "ip_connect_enabled" {
  type = bool
  description = "(Optional) Is IP Connect feature enabled for the Bastion Host. Defaults to false."
  default = null
}

variable "shareable_link_enabled" {
  type = bool
  description = "(Optional) Is Shareable Link feature enabled for the Bastion Host. Defaults to false."
  default = null
}

variable "tunneling_enabled" {
  type = bool
  description = "(Optional) Is Tunneling feature enabled for the Bastion Host. Defaults to false."
  default = null
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Azure Bastion Host and Public IP resources."
  type = map(string)
  default = null
}
