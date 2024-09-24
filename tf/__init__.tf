terraform {
  required_version = ">=1.3.3"
  required_providers {
    azurerm = "= 3.116.0"
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-ltatschc"
    storage_account_name = "saiacltatschc"
    container_name       = "terraform"
    key                  = "azaccelerator.tfstate"
    subscription_id      = "bfd17bfe-75bc-40d0-bac1-3cbc8b5a3ae5"
  }
}
