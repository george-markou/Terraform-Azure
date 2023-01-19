variable "dns_forwarding_ruleset_id" {
  type = string
  description = "The id of the existing forwarding ruleset"
}

variable "name" {
  type = string
  description = "The name of the rule"
}

variable "domain" {
  type = string
  description = "The name of the domain"
}

variable "enabled" {
  type = bool
  description = "Status of the rule"
}

variable "target_dns_servers" {
  type = list(any)
  description = "One or more target dns server blocks as defined below."
  default = []
}
