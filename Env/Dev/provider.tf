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
  subscription_id = "d1dd9b35-81ae-416d-8d7b-0f8b1d0484ef"
}