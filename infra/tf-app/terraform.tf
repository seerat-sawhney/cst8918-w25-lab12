terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0"

  backend "azurerm" {
    resource_group_name  = "dani0197-githubactions-rg"
    storage_account_name = "dani0197githubactions"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
  }
}
