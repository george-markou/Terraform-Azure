variable "location" {
  type = string
  description = "The name of the location"
}

variable "name" {
  type = string
  description = "The name of the resource"
}

variable "resource_group_name" {
  type = string
  description = "The name of the resource group"
}

variable "virtual_network_id" {
  type = string
  description = "The id of the virtual network"
}

variable "inbound_endpoint_name" {
  type = string
  description = "The name of the inbound endpoint"
}

variable "inbound_subnet_id" {
  type = string
  description = "The id of the inbound subnet"
}

variable "outbound_endpoint_name" {
  type = string
  description = "The name of outbound endpoint"
}

variable "outbound_subnet_id" {
  type = string
  description = "The id of the outbound subnet"
}

variable "ruleset_name" {
  type = string
  description = "The id of the outbound subnet"
}

variable "network_link_name" {
  type = string
  description = "The id of the outbound subnet"
}
