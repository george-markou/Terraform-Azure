variable "dns_zone_name" {
  type        = list(string)
  default     = ["zone1", "zone2", "zone3"]
}

variable "resource_group_name" {
  type = string
  description = "The resource group name"
}

variable "use_for_each" {
  description = "Use `for_each` instead of `count` to create multiple resource instances."
  type        = bool
  default     = false
  nullable    = false
}

variable "virtual_network_id" {
  type = string
  description = "The id of the virtual network"
}

variable "network_link_name" {
  type = string
  description = "The network link name"
}
