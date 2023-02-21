  variable "nsg_rule_name" {
    type = string
    description = "(Required) The name of the NSG Rule."
  }

  variable "direction" {
    type = string
    description = "(Required) The direction of the NSG Rule."
  }

  variable "priority" {
    type = string
    description = "(Required) The priority of the NSG Rule."
  }

  variable "access" {
    type = string
    description = "(Required) Access of the NSG Rule."
  }

variable "protocol" {
    type = string
    description = "(Required) The protocol of the NSG Rule."
  }

  variable "source_port_range" {
    type = string
    description = "(Required) Source port range of the NSG Rule."
  }

  variable "destination_port_range" {
    type = string
    default = null
    description = "(Required) Destination port range of the NSG Rule."
  }

    variable "destination_port_ranges" {
    type = list(string)
    default = null
    description = "Destination port range of the NSG Rule."
  }

  variable "source_address_prefix" {
    type = string
      description = "Destination port ranges of the NSG Rule."
  }
  
  variable "destination_address_prefix" {
    type = string
    description = "Destination address prefix of the NSG Rule."
  }
  
  variable "resource_group_name" {
    type = string
    description = "(Required) The name of the Resource Group."
  }

  variable "network_security_group_name" {
    type = string
    description = "(Required) The name of the NSG."
  }