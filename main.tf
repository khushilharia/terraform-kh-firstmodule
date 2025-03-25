resource "azurerm_resource_group" "khrg" {
  name = "khrg"
  location = var.location
}

resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.khrg.name
  location                 = azurerm_resource_group.khrg.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type

  tags = {
  environment = "Dev"
  owner = "Mr. ${local.name}"
  }
}

output "primary_key" {
  value = azurerm_storage_account.storage.primary_access_key
  sensitive = true
}