//Storage Account - RMIS NonProd Private Storage Account
//*************************************************************************************
resource "azurerm_storage_account" "RMIS_NonProd_Private_Storage_Account" {
  name                     = var.name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier
  account_kind             = var.account_kind
  tags                     = var.tags
}
//*************************************************************************************