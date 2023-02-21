variable "vnet_name" {
  type = string
  description = "The name of the resource"
}

variable "location" {
  type = string
  description = "The name of the location"
}

variable "resource_group_name" {
  type = string
  description = "The name of the resource group"
}

variable "address_space" {
  type = list
  description = "The address space for the VNet"
}

variable "dns_servers" {
  type = list
  default = null
  description = "The dns servers to configured in the VNet"
}

variable "ddos_plan_id" {
  type = string
  default = null
  description = "The ddos plan id to be configured"
}
variable "subnet" {
  type = list(any)
  default = []
  description = "One or more subnets blocks as defined below"
}
