resource "azurerm_policy_set_definition" "res-0" {
  description         = "Deploy Microsoft Defender for Cloud configuration"
  display_name        = "Deploy Microsoft Defender for Cloud configuration"
  management_group_id = "/providers/Microsoft.Management/managementGroups/101"
  name                = "Deploy-MDFC-Config"
  parameters          = "{\"ascExportResourceGroupLocation\":{\"type\":\"String\",\"metadata\":{\"description\":\"The location where the resource group and the export to Log Analytics workspace configuration are created.\",\"displayName\":\"Resource Group location for the export to Log Analytics workspace configuration\"}},\"ascExportResourceGroupName\":{\"type\":\"String\",\"metadata\":{\"description\":\"The resource group name where the export to Log Analytics workspace configuration is created. If you enter a name for a resource group that doesn't exist, it'll be created in the subscription. Note that each resource group can only have one export to Log Analytics workspace configured.\",\"displayName\":\"Resource Group name for the export to Log Analytics workspace configuration\"}},\"emailSecurityContact\":{\"type\":\"string\",\"metadata\":{\"description\":\"Provide email address for Microsoft Defender for Cloud contact details\",\"displayName\":\"Security contacts email address\"}},\"enableAscForAppServices\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForArm\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForContainers\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForCosmosDbs\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForDns\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForKeyVault\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForOssDb\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForServers\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForSql\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForSqlOnVm\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"enableAscForStorage\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"logAnalytics\":{\"type\":\"String\",\"metadata\":{\"description\":\"Select Log Analytics workspace from dropdown list. If this workspace is outside of the scope of the assignment you must manually grant 'Log Analytics Contributor' permissions (or similar) to the policy assignment's principal ID.\",\"displayName\":\"Primary Log Analytics workspace\",\"strongType\":\"omsWorkspace\"}},\"minimalSeverity\":{\"type\":\"string\",\"allowedValues\":[\"High\",\"Medium\",\"Low\"],\"defaultValue\":\"High\",\"metadata\":{\"description\":\"Defines the minimal alert severity which will be sent as email notifications\",\"displayName\":\"Minimal severity\"}}}"
  policy_type         = "Custom"
  policy_definition_reference {
    parameter_values     = "{\"resourceGroupLocation\":{\"value\":\"[parameters('ascExportResourceGroupLocation')]\"},\"resourceGroupName\":{\"value\":\"[parameters('ascExportResourceGroupName')]\"},\"workspaceResourceId\":{\"value\":\"[parameters('logAnalytics')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ffb6f416-7bd2-4488-8828-56585fef2be9"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForAppServices')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/b40e7bcd-a1e5-47fe-b9cf-2f534d0bfb7d"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForArm')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/b7021b2b-08fd-4dc0-9de7-3c6ece09faf9"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForContainers')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/c9ddb292-b203-4738-aead-18e2716e858f"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForCosmosDbs')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/82bf5b87-728b-4a74-ba4d-6123845cf542"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForDns')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/2370a3c1-4a25-4283-a91a-c9c1a145fb2f"
  }
  policy_definition_reference {
    parameter_values     = "{\"Effect\":{\"value\":\"[parameters('enableAscForKeyVault')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/1f725891-01c0-420a-9059-4fa46cb770b7"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForOssDb')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/44433aa3-7ec2-4002-93ea-65c65ff0310a"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForSql')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/b99b73e7-074b-4089-9395-b7236f094491"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForSqlOnVm')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/50ea7265-7d8c-429e-9a7d-ca1f410191c3"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForStorage')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/74c30959-af11-47b3-9ed2-a26e03f427a3"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('enableAscForServers')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/8e86a5b6-b9bd-49d1-8e21-4bb8a0862222"
  }
  policy_definition_reference {
    parameter_values     = "{\"emailSecurityContact\":{\"value\":\"[parameters('emailSecurityContact')]\"},\"minimalSeverity\":{\"value\":\"[parameters('minimalSeverity')]\"}}"
    policy_definition_id = "/providers/Microsoft.Management/managementGroups/101/providers/Microsoft.Authorization/policyDefinitions/Deploy-ASC-SecurityContacts"
  }
}
