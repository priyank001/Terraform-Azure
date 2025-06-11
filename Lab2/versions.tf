terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.31.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "ca42581a-d708-4048-82cd-d31f0421c8bf" # Replace with your Azure subscription ID
}