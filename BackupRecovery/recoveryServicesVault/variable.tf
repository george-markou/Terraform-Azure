variable "recover_service_vault_name" {
    type = string
    description = "(Required) Specifies the name of the Recovery Services Vault. Recovery Service Vault name must be 2 - 50 characters long, start with a letter, contain only letters, numbers and hyphens. Changing this forces a new resource to be created."
}

variable "location" {
    type = string
    description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
    type = string
    description = "(Required) The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created."
}

variable "sku" {
    type = string
    default = "Standard"
    description = "(Required) Sets the vault's SKU. Possible values include: Standard, RS0."
}

variable "storage_mode_type" {
    type = string
    default = null
    description = "(Optional) The storage type of the Recovery Services Vault. Possible values are GeoRedundant, LocallyRedundant and ZoneRedundant. Defaults to GeoRedundant."
}

variable "public_network_access_enabled" {
    type = bool
    default = null
    description = "(Optional) Is it enabled to access the vault from public networks. Defaults to true."
}
