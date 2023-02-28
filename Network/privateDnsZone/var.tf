variable "dns_zone_name" {
  type        = list(string)
  description = "(Required) An array of dns zones to be created."
  default     = [
    "zone1",
    "zone2",
    "zone3"
  ]
}

variable "resource_group_name" {
  type = string
  description = "(Required) The resource group name."
}

variable "use_for_each" {
  description = "Use `for_each` instead of `count` to create multiple resource instances."
  type        = bool
  default     = false
  nullable    = false
}

variable "virtual_network_id" {
  type = string
  description = "(Required) The id of the virtual network."
}

variable "network_link_name" {
  type = string
  description = "(Required) The network link name."
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to Private DNS Zone resources."
  type = map(string)
  default = null
}
