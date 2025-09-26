resource "azurerm_resource_group" "rg" {
  name = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name = var.storage_account_name
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name = var.container_name
  storage_account_name = azurerm_storage_account.storage.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "blob" {
  name = "text.txt"
  storage_account_name = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.container.name
  type = "Block"
  source = "lorem-ipsum.txt"
}