variable "billing_account_name" {
  description = "(Required) The Billing Account Name of the Enterprise Account."
  type = string
}

variable "enrollment_account_name" {
  description = "(Required) The Enrollment Account Name in the above Enterprise Account."
  type = string
}

variable "alias" {
  description = "(Optional) The Alias name for the subscription. Terraform will generate a new GUID if this is not supplied. Changing this forces a new Subscription to be created.)"
  type = string
  default = null
}

variable "subscription_name" {
  description = "(Required) The Name of the Subscription. This is the Display Name in the portal."
  type = string
}