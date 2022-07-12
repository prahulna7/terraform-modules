//Subscription = ts_nonprod08_ea(npRMISDMZ)
//Resource_group_name = tsnp-Network_RMISNonProdDMZ
resource "azurerm_resource_group" "rg_RMISNonProdDMZ" {
  name     = "${var.client}-${var.prefix}_RMISNonProdDMZ"
  location = var.location
  tags     = var.tags
}


//Resource_group_name = tsnp-Network_RMISProdPriv
resource "azurerm_resource_group" "rg_RMISProdPriv" {
  name     = "${var.client}-${var.prefix}_RMISProdPriv"
  location = var.location
  tags     = var.tags2
}


//Resource_group_name = NonProd_Shared_RMIS_RG
resource "azurerm_resource_group" "rg_RMIS_RG" {
  name     = "${var.env}_${var.prefix_shared}_RMIS_RG"
  location = var.location
  tags     = var.tags2
}


//Resource_group_name = tsnp-Network_InvoltaNonProdDMZ
resource "azurerm_resource_group" "rg_InvoltaNonProdDMZ" {
  name     = "${var.client}-${var.prefix}_InvoltaNonProdDMZ"
  location = var.location
  tags     = var.tags3
}


//Resource_group_name = tsnp-Network_InvoltaProdPriv
resource "azurerm_resource_group" "rg_InvoltaProdPriv" {
  name     = "${var.client}-${var.prefix}_InvoltaProdPriv"
  location = var.location
  tags     = var.tags4
}


//Resource_group_name = NonProd_Shared_Involta_RG
resource "azurerm_resource_group" "rg_Involta_RG" {
  name     = "${var.env}_${var.prefix_shared}_Involta_RG"
  location = var.location
  tags     = var.tags4
}

