terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }

  backend "azurerm" {
    access_key           = " "
    storage_account_name = " "
    container_name       = " "
    key                  = " "
}
}


provider "azurerm" {
  features {}
}