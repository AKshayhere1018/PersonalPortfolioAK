terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0.0"
    }
  }
  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
  subscription_id = "71af3639-252e-4f2d-9acc-b5ad2aa7c74c"
}
