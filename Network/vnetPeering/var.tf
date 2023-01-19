 variable "peering_name" {
    type = string
    description = "The name for the peering"
}

variable "vnet_name" {
    type = string
    description = "The name of the Virtual Network"
}

variable "resource_group_name" {
    type = string
    description = "The name of the Resource Group"
}

variable "remote_network_id" {
    type = string
    description = "The id of the remote virtual network"
}

variable "allow_virtual_network_access" {
    type = bool
    description = "Virtual Network Access Enabled/Disabled"
    default = null
}

variable "allow_forwarded_traffic" {
    type = bool
    description = "Forwarded Traffic Enabled/Disabled"
    default = null
}

variable "allow_gateway_transit" {
    type = bool
    description = "Gateway Transit Enabled/Disabled"
    default = null
}

variable "use_remote_gateways" {
    type = bool
    description = "use remote gateway"
    default = null
}
