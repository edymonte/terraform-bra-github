terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.40.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-bra-dev"
    storage_account_name = "stgbradevtfstate01"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    tenant_id            = "2f3876f5-e513-4806-8697-d5ef85d0c67e"
    client_id            = "edfdf930-9929-4691-9f06-7e9951bc8140"
    client_secret        = "2Ul8Q~oqg8rxtuYlwZ5wZzwHg_ZaFeK1Rfgd1cbg"
    subscription_id      = "385a379e-e92e-4d3d-be57-ba91115c7e66"
#    use_oidc             = true
  }
}
provider "azurerm" {
  features {}
  alias           = "azurerm"
  subscription_id = "385a379e-e92e-4d3d-be57-ba91115c7e66"
#  use_oidc        = true
  client_id       = "edfdf930-9929-4691-9f06-7e9951bc8140"
  tenant_id       = "2f3876f5-e513-4806-8697-d5ef85d0c67e"
}