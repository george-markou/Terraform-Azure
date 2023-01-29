resource "azurerm_policy_set_definition" "res-0" {
  description         = "Deploy auditing, Alert, TDE and SQL vulnerability to SQL Databases when it not exist in the deployment"
  display_name        = "Deploy SQL Database built-in SQL security configuration"
  management_group_id = "/providers/Microsoft.Management/managementGroups/101"
  name                = "Deploy-Sql-Security"
  parameters          = "{\"SqlDbAuditingSettingsDeploySqlSecurityEffect\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Deploy auditing settings to SQL Database when it not exist in the deployment\",\"displayName\":\"Deploy SQL database auditing settings\"}},\"SqlDbSecurityAlertPoliciesDeploySqlSecurityEffect\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Deploy the security Alert Policies configuration with email admin accounts when it not exist in current configuration\",\"displayName\":\"Deploy SQL Database security Alert Policies configuration with email admin accounts\"}},\"SqlDbTdeDeploySqlSecurityEffect\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Deploy the Transparent Data Encryption when it is not enabled in the deployment\",\"displayName\":\"Deploy SQL Database Transparent Data Encryption \"}},\"SqlDbVulnerabilityAssessmentsDeploySqlSecurityEffect\":{\"type\":\"String\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Deploy SQL Database vulnerability Assessments when it not exist in the deployment. To the specific  storage account in the parameters\",\"displayName\":\"Deploy SQL Database vulnerability Assessments\"}},\"vulnerabilityAssessmentsEmail\":{\"type\":\"String\",\"metadata\":{\"description\":\"The email address to send alerts\",\"displayName\":\"The email address to send alerts\"}},\"vulnerabilityAssessmentsStorageID\":{\"type\":\"String\",\"metadata\":{\"description\":\"The storage account ID to store assessments\",\"displayName\":\"The storage account ID to store assessments\"}}}"
  policy_type         = "Custom"
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('SqlDbAuditingSettingsDeploySqlSecurityEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Management/managementGroups/101/providers/Microsoft.Authorization/policyDefinitions/Deploy-Sql-AuditingSettings"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('SqlDbSecurityAlertPoliciesDeploySqlSecurityEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Management/managementGroups/101/providers/Microsoft.Authorization/policyDefinitions/Deploy-Sql-SecurityAlertPolicies"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('SqlDbTdeDeploySqlSecurityEffect')]\"}}"
    policy_definition_id = "/providers/Microsoft.Management/managementGroups/101/providers/Microsoft.Authorization/policyDefinitions/Deploy-Sql-Tde"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('SqlDbVulnerabilityAssessmentsDeploySqlSecurityEffect')]\"},\"vulnerabilityAssessmentsEmail\":{\"value\":\"[parameters('vulnerabilityAssessmentsEmail')]\"},\"vulnerabilityAssessmentsStorageID\":{\"value\":\"[parameters('vulnerabilityAssessmentsStorageID')]\"}}"
    policy_definition_id = "/providers/Microsoft.Management/managementGroups/101/providers/Microsoft.Authorization/policyDefinitions/Deploy-Sql-vulnerabilityAssessments"
  }
}
