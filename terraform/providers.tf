terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "devop-backend"
    storage_account_name = "devopstorage001"
    container_name       = "blobdevops"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}