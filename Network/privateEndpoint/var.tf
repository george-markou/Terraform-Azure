variable "name" {
  description = "(Required) Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created."
  type = string
}

variable "resource_group_name" {
  description = "(Required) Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created."
  type = string
}

variable "location" {
  description = "(Required) The supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type = string
}

variable "subnet_id" {
  description = "(Required) The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created."
  type = string
}

variable "private_dns_zone_group_name" {
  description = "(Optional) A private_dns_zone_group block as defined below."
  type = string
}

variable "private_dns_zone_ids" {
  description = "(Required) Specifies the list of Private DNS Zones to include within the private_dns_zone_group."
  type = list(string)
}

variable "private_service_connection_name" {
  description = "(Required) A private_service_connection block as defined below."
  type = string
}

variable "private_connection_resource_id" {
  description = " (Optional) The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to."
  type = string
}

variable "is_manual_connection" {
  description = "(Required) Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created."
  type = string
}

variable "subresource_names" {
  description = "(Optional) A list of subresource names which the Private Endpoint is able to connect to. "
  type = list(string)
}