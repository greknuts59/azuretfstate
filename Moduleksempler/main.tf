terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name    = "tfstate"
    storage_account_name  = "tfstate002"
    container_name                 = "tfstate002"
    key                            = "prod.terraform.tfstate"
    access_key = "GF7Ar7gLllQlEMpA2LQJRCJQJCUd8bhnjzEYkVqJLXjfy9+1DvvqUMs6uPnWq0OqyV3Re3aYV7KU+ASt1Quclw=="
    #use_msi                        = true
    subscription_id                = "0fb7e338-e335-4852-bc67-fa9035f1b59f"
    tenant_id                      = "db0cb781-b1c3-4ab8-b789-af161847f80b"
  }
}
  provider "azurerm" {
  features {}
}
  


module "ResourceGroup"{
  source ="./RecourceGroup"
  base_name = "Terraformeksempel01"
  location = "norwayeast"
}