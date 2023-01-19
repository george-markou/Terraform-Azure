output "id" {
  description = "The id of the route table"
  value = azurerm_route_table.rt.id
}

output "name" {
   description = "The name of the route table"
  value = azurerm_route_table.rt.name
}
