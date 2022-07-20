//Outputs for RMIS Storage Account 

output "id" {
  value = azurerm_storage_account.RMIS_NonProd_Private_Storage_Account.id
}

output "name" {
  value = azurerm_storage_account.RMIS_NonProd_Private_Storage_Account.name
}