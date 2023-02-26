<h1>Terraform Azure Private DNS Zone Module</h1>
This Terraform module helps you create a single or mutliple private DNS zone in Azure and attach them to a virtual network.

<h2>Usage</h2>
You can use this module in your Terraform configuration by including it as a module and providing the required input variables. Here is an example of how to use the module to create two Private DNS Zones and attach them to a virtual network:

```hcl
module "private_dns_zone" {
  source                    = "github.com/george-markou/Terraform-Azure//Network/privateDnsZone"
  resource_group_name       = "rgtest"
  dns_zone_name     = [
  "myfirstprivatednszone.local",
  "mysecondprivatednszone.local",
  ]
  network_link_name = "link-to-vnet"
  virtual_network_id = "/subscriptions/<subcription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Network/virtualNetworks/<vnet-name>"
  tags = {
    "Environment" = "Prod"
  }
}
```

This example creates two new Private DNS Zones and attaches them to a virtual network.

<h2>Input Variables</h2>
The module accepts the following input variables:

|Variable |	Description| Type|	Required|
|---|---|---|---|
|`resource_group_name`|	The name of the resource group in which to create the Private DNS Zone.|	string|	Yes|
|`dns_zone_name`|	An array of dns zones to be created.|	list(string)|	Yes|
|`network_link_name`|	The network link name.|	string|	Yes|
|`virtual_network_id`|	The id of the virtual network.|	string|	Yes
|`tags`|	The location of the Private DNS Zone.|	map(string)|	No|

<h2>Output Values</h2>>
The module exports the following output values:

|Output|	Description|
|---|---|
|`id`|	The ID of the Private DNS Zone.|

<h2>Bonus: Deploy Private DNS Zones used for Private Link based on the recommendations from the Azure Landing Zone Conceptual Architecture.</h2>

```hcl
module "private_dns_zone" {
  source                    = "github.com/george-markou/Terraform-Azure//Network/privateDnsZone"
  resource_group_name       = "rgtest"
  dns_zone_name     = [
        "privatelink.xxxxxx.azmk8s.io", // Replace xxxxxx with target region (i.e. eastus)
        "privatelink.xxxxxx.batch.azure.com", // Replace xxxxxx with target region (i.e. eastus)
        "privatelink.xxxxxx.kusto.windows.net", // Replace xxxxxx with target region (i.e. eastus)
        "privatelink.xxxxxx.backup.windowsazure.com", // Replace xxxxxx with target region geo code (i.e. for eastus, the geo code is eus)
        "privatelink.adf.azure.com",
        "privatelink.afs.azure.net",
        "privatelink.agentsvc.azure-automation.net",
        "privatelink.analysis.windows.net",
        "privatelink.api.azureml.ms",
        "privatelink.azconfig.io",
        "privatelink.azure-api.net",
        "privatelink.azure-automation.net",
        "privatelink.azurecr.io",
        "privatelink.azure-devices.net",
        "privatelink.azure-devices-provisioning.net",
        "privatelink.azurehdinsight.net",
        "privatelink.azurehealthcareapis.com",
        "privatelink.azurestaticapps.net",
        "privatelink.azuresynapse.net",
        "privatelink.azurewebsites.net",
        "privatelink.batch.azure.com",
        "privatelink.blob.core.windows.net",
        "privatelink.cassandra.cosmos.azure.com",
        "privatelink.cognitiveservices.azure.com",
        "privatelink.database.windows.net",
        "privatelink.datafactory.azure.net",
        "privatelink.dev.azuresynapse.net",
        "privatelink.dfs.core.windows.net",
        "privatelink.dicom.azurehealthcareapis.com",
        "privatelink.digitaltwins.azure.net",
        "privatelink.directline.botframework.com",
        "privatelink.documents.azure.com",
        "privatelink.eventgrid.azure.net",
        "privatelink.file.core.windows.net",
        "privatelink.gremlin.cosmos.azure.com",
        "privatelink.guestconfiguration.azure.com",
        "privatelink.his.arc.azure.com",
        "privatelink.kubernetesconfiguration.azure.com",
        "privatelink.managedhsm.azure.net",
        "privatelink.mariadb.database.azure.com",
        "privatelink.media.azure.net",
        "privatelink.mongo.cosmos.azure.com",
        "privatelink.monitor.azure.com",
        "privatelink.mysql.database.azure.com",
        "privatelink.notebooks.azure.net",
        "privatelink.ods.opinsights.azure.com",
        "privatelink.oms.opinsights.azure.com",
        "privatelink.pbidedicated.windows.net",
        "privatelink.postgres.database.azure.com",
        "privatelink.prod.migration.windowsazure.com",
        "privatelink.purview.azure.com",
        "privatelink.purviewstudio.azure.com",
        "privatelink.queue.core.windows.net",
        "privatelink.redis.cache.windows.net",
        "privatelink.redisenterprise.cache.azure.net",
        "privatelink.search.windows.net",
        "privatelink.service.signalr.net",
        "privatelink.servicebus.windows.net",
        "privatelink.siterecovery.windowsazure.com",
        "privatelink.sql.azuresynapse.net",
        "privatelink.table.core.windows.net",
        "privatelink.table.cosmos.azure.com",
        "privatelink.tip1.powerquery.microsoft.com",
        "privatelink.token.botframework.com",
        "privatelink.vaultcore.azure.net",
        "privatelink.web.core.windows.net",
        "privatelink.webpubsub.azure.com"
  ]
  network_link_name = "link-to-vnet"
  virtual_network_id = "/subscriptions/<subcription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.Network/virtualNetworks/<vnet-name>"
  tags = {
    "Environment" = "Prod"
  }
}
```

<h2>Authors</h2>
This Terraform module is maintained by George Markou.

<h2>License</h2>
This module is open source software licensed under the MIT License.
