terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"  # Use the specific version you want
    }
  }
}

provider "azurerm" {
  features {}
}

module "example" {
  source = "github.com/AbdulAzeez02/test_modules?ref=main"

  resource_group_name = "my-resource-group"
  location            = "East US"
}
