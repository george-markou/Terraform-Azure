variable "management_group_id" {
  description = "(Required) The ID of the Management Group to associate the Subscription with. Changing this forces a new Management to be created."
  type = string
}

variable "subscription_id" {
  description = "Required) The ID of the Subscription to be associated with the Management Group. Changing this forces a new Management to be created."
  type = string
}