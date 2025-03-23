terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.24.0"
    }
  }

  backend "azurerm" {
    resource_group_name   = "Shubham_Singhvi"
    storage_account_name  = "shubhamsinghvi8696"
    container_name        = "infracontainer"
    key                   = "terraform.tfstate"
}
}


provider "azurerm" {
  features {}
  subscription_id = "8dbb5093-a6c6-4b12-9cc9-45350a4547ce"
}