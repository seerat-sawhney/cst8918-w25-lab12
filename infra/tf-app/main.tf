resource "azurerm_resource_group" "app" {
  name     = "jose0337-a12-rg"
  location = "canadacentral"
}

output "resource_group_name" {
  value = azurerm_resource_group.app.name
}
