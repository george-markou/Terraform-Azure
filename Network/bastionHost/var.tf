variable "pip_name" {
  type = string
  description = "The name of the bastion host public IP."
}

variable "bastion_name" {
  type = string
  description = "The name of the bastion host."
}

variable "location" {
  type = string
  description = "The name of the location."
}

variable "resource_group_name" {
  type = string
  description = "The resource group name."
}

variable "subnet_id" {
  type = string
  description = "The id of the AzureBastionSubnet."
}

variable "copy_paste_enabled" {
  type = bool
  description = "Copy & Paste capability."
}

variable "file_copy_enabled" {
  type = bool
  description = "File copy capability."
}

variable "sku" {
  type = string
  description = "SKU for the bastion host "
}

variable "ip_connect_enabled" {
  type = bool
  description = "IP Connect capability."
}

variable "shareable_link_enabled" {
  type = bool
  description = "Shareable link capability."
}
