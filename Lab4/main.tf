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
  tenant_id                   = data.azurerm_client_config.myself.tenant_id # Use the tenant ID from the client config
  sku_name                    = "standard"
}

data "azurerm_client_config" "myself" {
  # This data source retrieves the current Azure client configuration
  # It is used to get the tenant ID and subscription ID for the Key Vault access policy
}

resource "azurerm_role_assignment" "myself" {
  scope                = azurerm_key_vault.example.id
  role_definition_name = "Reader"
  principal_id         = data.azurerm_client_config.myself.object_id # Use the object ID from the client config
}