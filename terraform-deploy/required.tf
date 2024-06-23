terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.41.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.4.3"
    }
  }
  backend "azurerm" {
    subscription_id      = "385a379e-e92e-4d3d-be57-ba91115c7e66"
    resource_group_name  = "rg-tfstate-bra-dev"
    storage_account_name = "stgbradevtfstate01"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {
  }
}
