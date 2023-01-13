variable "name" {
  description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type = string
}

variable "location" {
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type = string
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Resource Group."
  type = map(string)
  default = null
}