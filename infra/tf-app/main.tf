# Resource Group
resource "azurerm_resource_group" "app" {
  name     = "jose0337-a12-rg"
  location = "canadacentral"
}

# Virtual Network
resource "azurerm_virtual_network" "app" {
  name                = "jose0337-vnet"
  resource_group_name = azurerm_resource_group.app.name
  location            = azurerm_resource_group.app.location
  address_space       = ["10.0.0.0/16"]
}

# Subnet
resource "azurerm_subnet" "app" {
  name                 = "jose0337-subnet"
  resource_group_name  = azurerm_resource_group.app.name
  virtual_network_name = azurerm_virtual_network.app.name
  address_prefixes     = ["10.0.1.0/24"]
}
