resource "azurerm_resource_group" "main" {
  name     = "${var.application_name}-${var.environment_name}-rg"
  location = var.primary_location # Replace with your desired Azure region
}

resource "random_string" "keyvault_name" {
  length  = 6
  upper   = false
  special = false
}
resource "azurerm_key_vault" "example" {
  name                        = "kev-${var.application_name}-${random_string.keyvault_name.result}"
  location                    = azurerm_resource_group.main.location
  resource_group_name         = azurerm_resource_group.main.name
  tenant_id                   = "ceef7486-1ffe-4642-bbe7-7655fb3e8777" # Replace with your Azure tenant ID
  sku_name                    = "standard"

}