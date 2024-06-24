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
    subscription_id      = "6d90d82c-231b-4534-ab67-7c0f357dd2f2"
    resource_group_name  = "rg-lab-github-montry"
    storage_account_name = "montrystate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
}
