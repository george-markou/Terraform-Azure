resource "azurerm_management_group_policy_assignment" "res-0" {
  description          = "Deploy Microsoft Defender for Cloud and Security Contacts"
  display_name         = "Deploy Microsoft Defender for Cloud configuration"
  location             = "eastus"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/101"
  name                 = "Deploy-MDFC-Config"
  parameters           = "{\"ascExportResourceGroupLocation\":{\"value\":\"eastus\"},\"ascExportResourceGroupName\":{\"value\":\"101-asc-export\"},\"emailSecurityContact\":{\"value\":\"security_contact@replace_me\"},\"enableAscForAppServices\":{\"value\":\"DeployIfNotExists\"},\"enableAscForArm\":{\"value\":\"DeployIfNotExists\"},\"enableAscForContainers\":{\"value\":\"DeployIfNotExists\"},\"enableAscForDns\":{\"value\":\"DeployIfNotExists\"},\"enableAscForKeyVault\":{\"value\":\"DeployIfNotExists\"},\"enableAscForOssDb\":{\"value\":\"DeployIfNotExists\"},\"enableAscForServers\":{\"value\":\"DeployIfNotExists\"},\"enableAscForSql\":{\"value\":\"DeployIfNotExists\"},\"enableAscForSqlOnVm\":{\"value\":\"DeployIfNotExists\"},\"enableAscForStorage\":{\"value\":\"DeployIfNotExists\"},\"logAnalytics\":{\"value\":\"/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/101-mgmt/providers/Microsoft.OperationalInsights/workspaces/101-la\"}}"
  policy_definition_id = "/providers/Microsoft.Management/managementGroups/101/providers/Microsoft.Authorization/policySetDefinitions/Deploy-MDFC-Config"
  identity {
    type = "SystemAssigned"
  }
}
