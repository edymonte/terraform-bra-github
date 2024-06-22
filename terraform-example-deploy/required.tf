terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.108.0"
    }
  }
}


provider "azurerm" {
  features {}
  subscription_id = "385a379e-e92e-4d3d-be57-ba91115c7e66"
  client_id       = "edfdf930-9929-4691-9f06-7e9951bc8140"
  client_secret   = "Xn~8Q~djte3HXvpNIeI8WO9pyWeWS-zKlIeCMaSr"
  tenant_id       = "2f3876f5-e513-4806-8697-d5ef85d0c67e"
}

resource "azurerm_resource_group" "rg_github" {
  name     = "rg-tfstate-bra-dev"
  location = "East US"

  tags = {
    environment = "Develop"
  }
}