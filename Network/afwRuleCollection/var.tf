variable "name" {
  description = "(Required) The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created."
  type = string
}

variable "firewall_policy_id" {
  description = "(Required) The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created."
  type = string
}

variable "priority" {
  description = "(Required) The priority of the Firewall Policy Rule Collection Group. The range is 100-65000."
  type = string
}

variable "application_rule_collection" {
  description = "(Optional) One or more application_rule_collection blocks as defined below."
  type    = list(any)
  default = []
}

variable "network_rule_collection" {
  description = "(Optional) One or more network_rule_collection blocks as defined below."
  type    = list(any)
  default = []
}

variable "nat_rule_collection" {
  description = "(Optional) One or more nat_rule_collection blocks as defined below."
  type    = list(any)
  default = []
}
