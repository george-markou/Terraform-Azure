resource "azurerm_management_group_policy_assignment" "mdfc" {
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

resource "azurerm_management_group_policy_assignment" "res-diagnostics" {
  description          = "Ensures that Azure resources are configured to forward diagnostic logs and metrics to an Azure Log Analytics workspace."
  display_name         = "Deploy-Resource-Diag"
  location             = "eastus"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/101"
  name                 = "Deploy-Resource-Diag"
  parameters           = "{\"logAnalytics\":{\"value\":\"/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/101-mgmt/providers/Microsoft.OperationalInsights/workspaces/101-la\"}}"
  policy_definition_id = "/providers/Microsoft.Management/managementGroups/101/providers/Microsoft.Authorization/policySetDefinitions/Deploy-Diagnostics-LogAnalytics"
  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_management_group_policy_assignment" "asc" {
  description          = "Microsoft Cloud Security Benchmark policy initiative."
  display_name         = "Microsoft Cloud Security Benchmark"
  location             = "eastus"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/101"
  name                 = "Deploy-ASC-Monitoring"
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/1f3afdf9-d0c9-4c3d-847f-89da613e70a8"
}

resource "azurerm_management_group_policy_assignment" "res-0" {
  description          = "Enable Azure Monitor for the virtual machines (VMs) in the specified scope (management group, subscription or resource group). Takes Log Analytics workspace as parameter."
  display_name         = "Enable Azure Monitor for VMs"
  location             = "eastus"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/101"
  name                 = "Deploy-VM-Monitoring"
  parameters           = "{\"logAnalytics_1\":{\"value\":\"/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/101-mgmt/providers/Microsoft.OperationalInsights/workspaces/101-la\"}}"
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/55f3eceb-5573-4f18-9695-226972c6d74a"
  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_management_group_policy_assignment" "res-0" {
  description          = "Enable Azure Monitor for the Virtual Machine Scale Sets in the specified scope (Management group, Subscription or resource group). Takes Log Analytics workspace as parameter. Note: if your scale set upgradePolicy is set to Manual, you need to apply the extension to the all VMs in the set by calling upgrade on them. In CLI this would be az vmss update-instances."
  display_name         = "Enable Azure Monitor for Virtual Machine Scale Sets"
  location             = "eastus"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/101"
  name                 = "Deploy-VMSS-Monitoring"
  parameters           = "{\"logAnalytics_1\":{\"value\":\"/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/101-mgmt/providers/Microsoft.OperationalInsights/workspaces/101-la\"}}"
  policy_definition_id = "/providers/Microsoft.Authorization/policySetDefinitions/75714362-cae7-409e-9b99-a8e5075b7fad"
  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_management_group_policy_assignment" "res-0" {
  description          = "Ensures that Activity Log Diagnostics settings are set to push logs into Log Analytics workspace."
  display_name         = "Deploy Diagnostic Settings for Activity Log to Log Analytics workspace"
  location             = "eastus"
  management_group_id  = "/providers/Microsoft.Management/managementGroups/101"
  name                 = "Deploy-AzActivity-Log"
  parameters           = "{\"logAnalytics\":{\"value\":\"/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/101-mgmt/providers/Microsoft.OperationalInsights/workspaces/101-la\"}}"
  policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/2465583e-4e78-4c15-b6be-a36cbc7c8b0f"
  identity {
    type = "SystemAssigned"
  }
}
