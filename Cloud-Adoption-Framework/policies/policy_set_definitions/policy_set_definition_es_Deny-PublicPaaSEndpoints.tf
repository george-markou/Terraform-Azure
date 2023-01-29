resource "azurerm_policy_set_definition" "res-0" {
  description         = "This policy initiative is a group of policies that prevents creation of Azure PaaS services with exposed public endpoints"
  display_name        = "Public network access should be disabled for PaaS services"
  management_group_id = "/providers/Microsoft.Management/managementGroups/101"
  name                = "Deny-PublicPaaSEndpoints"
  parameters          = "{\"ACRPublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies the creation of Azure Container Registires with exposed public endpoints \",\"displayName\":\"Public network access on Azure Container Registry disabled\"}},\"AFSPublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies the creation of Azure File Sync instances with exposed public endpoints \",\"displayName\":\"Public network access on Azure File Sync disabled\"}},\"AKSPublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies  the creation of  Azure Kubernetes Service non-private clusters\",\"displayName\":\"Public network access on AKS API should be disabled\"}},\"BatchPublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies creation of Azure Batch Instances with exposed public endpoints\",\"displayName\":\"Public network access should be disabled for Azure Batch Instances\"}},\"CosmosPublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies that  Cosmos database accounts  are created with out public network access is disabled.\",\"displayName\":\"Public network access should be disabled for CosmosDB\"}},\"KeyVaultPublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies creation of Key Vaults with IP Firewall exposed to all public endpoints\",\"displayName\":\"Public network access should be disabled for KeyVault\"}},\"MySQLFlexPublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies creation of MySql Flexible Server DB accounts with exposed public endpoints\",\"displayName\":\"Public network access should be disabled for MySQL Flexible Server\"}},\"PostgreSQLFlexPublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies creation of Postgre SQL Flexible DB accounts with exposed public endpoints\",\"displayName\":\"Public network access should be disabled for PostgreSql Flexible Server\"}},\"SqlServerPublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies creation of Sql servers with exposed public endpoints\",\"displayName\":\"Public network access on Azure SQL Database should be disabled\"}},\"StoragePublicIpDenyEffect\":{\"type\":\"String\",\"allowedValues\":[\"Audit\",\"Deny\",\"Disabled\"],\"defaultValue\":\"Deny\",\"metadata\":{\"description\":\"This policy denies creation of storage accounts with IP Firewall exposed to all public endpoints\",\"displayName\":\"Public network access onStorage accounts should be disabled\"}}}"
  policy_type         = "Custom"
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('ACRPublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/0fdf0491-d080-4575-b627-ad0e843cba0f"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('AFSPublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/21a8cd35-125e-4d13-b82d-2e19b7208bb7"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('AKSPublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/040732e8-d947-40b8-95d6-854c95024bf8"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('BatchPublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/74c5a0ae-5e48-4738-b093-65e23a060488"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('CosmosPublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/797b37f7-06b8-444c-b1ad-fc62867f335a"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('KeyVaultPublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/55615ac9-af46-4a59-874e-391cc3dfb490"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('MySQLFlexPublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/c9299215-ae47-4f50-9c54-8a392f68a052"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('PostgreSQLFlexPublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/5e1de0e3-42cb-4ebc-a86d-61d0c619ca48"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('SqlServerPublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/1b8ca024-1d5c-4dec-8995-b1a932b41780"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('StoragePublicIpDenyEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/34c877ad-507e-4c82-993e-3452a6e0ad3c"
  }
}
