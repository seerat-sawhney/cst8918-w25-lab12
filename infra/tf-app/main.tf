provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "app" {
  name     = "dani0197-a12-rg"
  location = "canadacentral"
}
