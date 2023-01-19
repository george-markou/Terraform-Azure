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

variable "route" {
  type = list(any)
  description = "One or more user defined routes blocks as defined below."
  default = []
}
