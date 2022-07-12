//Outputs for Resource Groups

output "rg_RMISNonProdDMZ_ID" {
  value = azurerm_resource_group.rg_RMISNonProdDMZ.id
  sensitive = false
}

output "rg_RMISProdPriv_ID" {
  value = azurerm_resource_group.rg_RMISProdPriv.id
  sensitive = false
}

output "rg_RMIS_RG_ID" {
  value = azurerm_resource_group.rg_RMIS_RG.id
  sensitive = false
}

output "rg_InvoltaNonProdDMZ_ID" {
  value = azurerm_resource_group.rg_InvoltaNonProdDMZ.id
  sensitive = false
}

output "InvoltaProdPriv_ID" {
  value = azurerm_resource_group.rg_InvoltaProdPriv.id
  sensitive = false
}

output "Involta_RG_ID" {
  value = azurerm_resource_group.rg_Involta_RG.id
  sensitive = false
}