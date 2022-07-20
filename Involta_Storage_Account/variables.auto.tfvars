//Storage Account Variables - Involta NonProd Private Storage Account
//*************************************************************************************
name                     = "inovoltanonprodprivatesa"
resource_group_name      = "cloud-shell-storage-westus2"
location                 = "West US"
account_tier             = "Standard"
account_replication_type = "LRS"
access_tier              = "Hot"
account_kind             = "StorageV2"
tags = {
  Environment = "NonProdPrivate",
  Location        = "Involta"
}

//*************************************************************************************