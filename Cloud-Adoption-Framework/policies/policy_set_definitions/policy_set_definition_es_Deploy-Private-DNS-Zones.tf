resource "azurerm_policy_set_definition" "res-0" {
  description         = "This policy initiative is a group of policies that ensures private endpoints to Azure PaaS services are integrated with Azure Private DNS zones"
  display_name        = "Configure Azure PaaS services to use private DNS zones"
  management_group_id = "/providers/Microsoft.Management/managementGroups/101"
  name                = "Deploy-Private-DNS-Zones"
  parameters          = "{\"azureAcrPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureAcrPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureAppPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureAppPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureAppServicesPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureAppServicesPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureAsrPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureAsrPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureAutomationDSCHybridPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureAutomationDSCHybridPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureAutomationWebhookPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureAutomationWebhookPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureBatchPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureBatchPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureCognitiveSearchPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureCognitiveSearchPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureCognitiveServicesPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureCognitiveServicesPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureCosmosCassandraPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureCosmosCassandraPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureCosmosGremlinPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureCosmosGremlinPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureCosmosMongoPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureCosmosMongoPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureCosmosSQLPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureCosmosSQLPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureCosmosTablePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureCosmosTablePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureDataFactoryPortalPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureDataFactoryPortalPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureDataFactoryPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureDataFactoryPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureDiskAccessPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureDiskAccessPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureEventGridDomainsPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureEventGridDomainsPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureEventGridTopicsPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureEventGridTopicsPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureEventHubNamespacePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureEventHubNamespacePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureFilePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureFilePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureHDInsightPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureHDInsightPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureIotHubsPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureIotHubsPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureIotPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureIotPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureKeyVaultPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureKeyVaultPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMachineLearningWorkspacePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMachineLearningWorkspacePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMediaServicesKeyPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMediaServicesKeyPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMediaServicesLivePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMediaServicesLivePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMediaServicesStreamPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMediaServicesStreamPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMigratePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMigratePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMonitorPrivateDnsZoneId1\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMonitorPrivateDnsZoneId1\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMonitorPrivateDnsZoneId2\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMonitorPrivateDnsZoneId2\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMonitorPrivateDnsZoneId3\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMonitorPrivateDnsZoneId3\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMonitorPrivateDnsZoneId4\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMonitorPrivateDnsZoneId4\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureMonitorPrivateDnsZoneId5\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureMonitorPrivateDnsZoneId5\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureRedisCachePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureRedisCachePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureServiceBusNamespacePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureServiceBusNamespacePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureSignalRPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureSignalRPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureStorageBlobPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureStorageBlobPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureStorageBlobSecPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureStorageBlobSecPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureStorageDFSPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureStorageDFSPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureStorageDFSSecPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureStorageDFSSecPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureStorageFilePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureStorageFilePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureStorageQueuePrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureStorageQueuePrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureStorageQueueSecPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureStorageQueueSecPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureStorageStaticWebPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureStorageStaticWebPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureStorageStaticWebSecPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureStorageStaticWebSecPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureSynapseDevPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureSynapseDevPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureSynapseSQLODPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureSynapseSQLODPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureSynapseSQLPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureSynapseSQLPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"azureWebPrivateDnsZoneId\":{\"type\":\"string\",\"defaultValue\":\"\",\"metadata\":{\"description\":\"Private DNS Zone Identifier\",\"displayName\":\"azureWebPrivateDnsZoneId\",\"strongType\":\"Microsoft.Network/privateDnsZones\"}},\"effect\":{\"type\":\"string\",\"allowedValues\":[\"DeployIfNotExists\",\"Disabled\"],\"defaultValue\":\"DeployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}},\"effect1\":{\"type\":\"string\",\"allowedValues\":[\"deployIfNotExists\",\"Disabled\"],\"defaultValue\":\"deployIfNotExists\",\"metadata\":{\"description\":\"Enable or disable the execution of the policy\",\"displayName\":\"Effect\"}}}"
  policy_type         = "Custom"
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureAcrPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e9585a95-5b8c-4d03-b193-dc7eb5ac4c32"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureAppPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/7a860e27-9ca2-4fc6-822d-c2d248c300df"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureAppServicesPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/b318f84a-b872-429b-ac6d-a01b96814452"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureAutomationDSCHybridPrivateDnsZoneId')]\"},\"privateEndpointGroupId\":{\"value\":\"DSCAndHybridWorker\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/6dd01e4f-1be1-4e80-9d0b-d109e04cb064"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureAutomationWebhookPrivateDnsZoneId')]\"},\"privateEndpointGroupId\":{\"value\":\"Webhook\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/6dd01e4f-1be1-4e80-9d0b-d109e04cb064"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureBatchPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/4ec38ebc-381f-45ee-81a4-acbc4be878f8"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureCognitiveSearchPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/fbc14a67-53e4-4932-abcc-2049c6706009"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureCognitiveServicesPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/c4bc6f10-cb41-49eb-b000-d5ab82e2a091"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureCosmosCassandraPrivateDnsZoneId')]\"},\"privateEndpointGroupId\":{\"value\":\"Cassandra\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a63cc0bd-cda4-4178-b705-37dc439d3e0f"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureCosmosGremlinPrivateDnsZoneId')]\"},\"privateEndpointGroupId\":{\"value\":\"Gremlin\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a63cc0bd-cda4-4178-b705-37dc439d3e0f"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureCosmosMongoPrivateDnsZoneId')]\"},\"privateEndpointGroupId\":{\"value\":\"MongoDB\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a63cc0bd-cda4-4178-b705-37dc439d3e0f"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureCosmosSQLPrivateDnsZoneId')]\"},\"privateEndpointGroupId\":{\"value\":\"SQL\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a63cc0bd-cda4-4178-b705-37dc439d3e0f"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureCosmosTablePrivateDnsZoneId')]\"},\"privateEndpointGroupId\":{\"value\":\"Table\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/a63cc0bd-cda4-4178-b705-37dc439d3e0f"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"listOfGroupIds\":{\"value\":[\"dataFactory\"]},\"privateDnsZoneId\":{\"value\":\"[parameters('azureDataFactoryPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/86cd96e1-1745-420d-94d4-d3f2fe415aa4"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"listOfGroupIds\":{\"value\":[\"portal\"]},\"privateDnsZoneId\":{\"value\":\"[parameters('azureDataFactoryPortalPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/86cd96e1-1745-420d-94d4-d3f2fe415aa4"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureDiskAccessPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/bc05b96c-0b36-4ca9-82f0-5c53f96ce05a"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect1')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureEventGridDomainsPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/d389df0a-e0d7-4607-833c-75a6fdac2c2d"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect1')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureEventGridTopicsPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/baf19753-7502-405f-8745-370519b20483"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureEventHubNamespacePrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ed66d4f5-8220-45dc-ab4a-20d1749c74e6"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureFileprivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/06695360-db88-47f6-b976-7500d4297475"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"groupId\":{\"value\":\"cluster\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureHDInsightPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/43d6e3bd-fc6a-4b44-8b4d-2151d8736a11"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureIotPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/aaa64d2d-2fa3-45e5-b332-0b031b9b30e8"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect1')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureIotHubsPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/c99ce9c1-ced7-4c3e-aca0-10e69ce0cb02"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureKeyVaultPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ac673a9a-f77d-4846-b2d8-a57f8e1c01d4"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureMachineLearningWorkspacePrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/ee40564d-486e-4f68-a5ca-7a621edae0fb"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"groupId\":{\"value\":\"keydelivery\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureMediaServicesKeyPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/b4a7f6c1-585e-4177-ad5b-c2c93f4bb991"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"groupId\":{\"value\":\"liveevent\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureMediaServicesLivePrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/b4a7f6c1-585e-4177-ad5b-c2c93f4bb991"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"groupId\":{\"value\":\"streamingendpoint\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureMediaServicesStreamPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/b4a7f6c1-585e-4177-ad5b-c2c93f4bb991"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureMigratePrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/7590a335-57cf-4c95-babd-ecbc8fafeb1f"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId1\":{\"value\":\"[parameters('azureMonitorPrivateDnsZoneId1')]\"},\"privateDnsZoneId2\":{\"value\":\"[parameters('azureMonitorPrivateDnsZoneId2')]\"},\"privateDnsZoneId3\":{\"value\":\"[parameters('azureMonitorPrivateDnsZoneId3')]\"},\"privateDnsZoneId4\":{\"value\":\"[parameters('azureMonitorPrivateDnsZoneId4')]\"},\"privateDnsZoneId5\":{\"value\":\"[parameters('azureMonitorPrivateDnsZoneId5')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/437914ee-c176-4fff-8986-7e05eb971365"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureRedisCachePrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/e016b22b-e0eb-436d-8fd7-160c4eaed6e2"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureServiceBusNamespacePrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/f0fcf93c-c063-4071-9668-c47474bd3564"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureSignalRPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/b0e86710-7fb7-4a6c-a064-32e9b829509e"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureAsrPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/942bd215-1a66-44be-af65-6a1c0318dbe2"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureStorageBlobPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/75973700-529f-4de2-b794-fb9b6781b6b0"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureStorageBlobSecPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/d847d34b-9337-4e2d-99a5-767e5ac9c582"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureStorageDFSPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/83c6fe0f-2316-444a-99a1-1ecd8a7872ca"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureStorageDFSSecPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/90bd4cb3-9f59-45f7-a6ca-f69db2726671"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureStorageFilePrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/6df98d03-368a-4438-8730-a93c4d7693d6"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureStorageQueuePrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/bcff79fb-2b0d-47c9-97e5-3023479b00d1"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureStorageQueueSecPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/da9b4ae8-5ddc-48c5-b9c0-25f8abf7a3d6"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureStorageStaticWebPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/9adab2a5-05ba-4fbd-831a-5bf958d04218"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureStorageStaticWebSecPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/d19ae5f1-b303-4b82-9ca8-7682749faf0c"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureSynapseDevPrivateDnsZoneId')]\"},\"targetSubResource\":{\"value\":\"Dev\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/1e5ed725-f16c-478b-bd4b-7bfa2f7940b9"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureSynapseSQLPrivateDnsZoneId')]\"},\"targetSubResource\":{\"value\":\"Sql\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/1e5ed725-f16c-478b-bd4b-7bfa2f7940b9"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureSynapseSQLODPrivateDnsZoneId')]\"},\"targetSubResource\":{\"value\":\"SqlOnDemand\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/1e5ed725-f16c-478b-bd4b-7bfa2f7940b9"
  }
  policy_definition_reference {
    parameter_values     = "{\"effect\":{\"value\":\"[parameters('effect')]\"},\"privateDnsZoneId\":{\"value\":\"[parameters('azureWebPrivateDnsZoneId')]\"}}"
    policy_definition_id = "/providers/Microsoft.Authorization/policyDefinitions/0b026355-49cb-467b-8ac4-f777874e175a"
  }
}
