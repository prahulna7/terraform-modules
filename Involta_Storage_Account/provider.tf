terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.12.0"
    }

  }
}
provider "azurerm" {
  features {}
}
/*
terraform {
  backend "azurerm" {
    resource_group_name  = "tsnp-sharedresources"
    storage_account_name = "truckstop1"
    container_name       = "keytruckstop"
    key                  = "keytruckstop"
  }
}
*/