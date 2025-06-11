resource "azurerm_resource_group" "main" {
  name     = "rg-${var.application_name}-${var.resource_group_name}"
  location = var.primary_location # Replace with your desired Azure region

}

resource "random_string" "storage_account_suffix" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_storage_account" "main" {
  name                     = "st${random_string.storage_account_suffix.result}storage"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}

# terraform {
#   backend "azurerm" {
#     resource_group_name  = "rg-Priyank-App-Prod-rg-prod" # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
#     storage_account_name = "stzxr26storage"                       # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
#     container_name       = "tfstate"                        # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
#     key                  = "prod.terraform.tfstate"         # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
#   }
# }

# resource "azurerm_log_analytics_workspace" "main" {
#   name                = "log-${var.application_name}-${var.environment_name}"
#   location            = azurerm_resource_group.main.location
#   resource_group_name = azurerm_resource_group.main.name
#   sku                 = "PerGB2018"
#   retention_in_days   = 30
# }
