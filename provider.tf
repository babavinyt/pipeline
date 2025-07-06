terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "my-rg"
    storage_account_name = "mystorage456789032"
    container_name       = "mycontainer"
    key                  = "ram.terraform.tfstate"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "ddf379db-e128-4db6-a12a-278fbaca3283"

}