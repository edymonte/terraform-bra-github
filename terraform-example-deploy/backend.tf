terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-github-actions-state"
    storage_account_name = "terraformgithubbra"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
   # access_key           = "EOOj6Gm8/aGscdQ/4WRBy55YaQQ1hlpujJX7FxMLF3x5NT0a/kxzHGxc2BVvxAmW6MFwRDdenkm9+AStX79e/g=="
   } 
  }
 
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "3.96.0"
#     }
 
#     random = {
#       source  = "hashicorp/random"
#       version = "3.6.0"
#     }
#   }
# }


# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "=3.0.0"
#     }
#   }
# }

# provider "azurerm" {
#   features {}
# }