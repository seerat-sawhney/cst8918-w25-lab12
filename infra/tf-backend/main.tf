terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "backend" {
  name     = "dani0197-githubactions-rg"
  location = "canadacentral"
}

resource "azurerm_storage_account" "backend" {
  name                     = "dani0197githubactions"
  resource_group_name      = azurerm_resource_group.backend.name
  location                 = azurerm_resource_group.backend.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version = "TLS1_2"
}

resource "azurerm_storage_container" "backend" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.backend.name
  container_access_type = "private"
}

output "resource_group_name" {
  value = azurerm_resource_group.backend.name
}

output "storage_account_name" {
  value = azurerm_storage_account.backend.name
}

output "container_name" {
  value = azurerm_storage_container.backend.name
}

output "arm_access_key" {
  value     = azurerm_storage_account.backend.primary_access_key
  sensitive = true
}
