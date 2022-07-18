
//Creating VNET - tsnp-vnet-RMISNonProdDMZ
//********************************************************************************************
resource "azurerm_virtual_network" "RMIS_NonProd_DMZ_VNET" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.vnet_location
  address_space       = var.address_space
  dns_servers         = var.dns_servers
  tags                = var.tags

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************


//Creating Subnet1 for - tsnp-vnet-RMISNonProdDMZ VNET
//********************************************************************************************
resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.RMIS_NonProd_DMZ_VNET.name
  address_prefixes     = var.subnet1_prefixes
  service_endpoints    = var.subnet_service_endpoints

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************

//Creating Subnet2 for - tsnp-vnet-RMISNonProdDMZ VNET
//********************************************************************************************
resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.RMIS_NonProd_DMZ_VNET.name
  address_prefixes     = var.subnet2_prefixes
  service_endpoints    = var.subnet_service_endpoints

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************

//Creating Subnet3 for - tsnp-vnet-RMISNonProdDMZ VNET
//********************************************************************************************
resource "azurerm_subnet" "subnet3" {
  name                 = var.subnet3_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.RMIS_NonProd_DMZ_VNET.name
  address_prefixes     = var.subnet3_prefixes
  service_endpoints    = var.subnet_service_endpoints

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************

//Virtual Network Peering - peer-to-tsnp-vnet-RMISNonProdDMZ(This is hub to spoke peering)
//********************************************************************************************
resource "azurerm_virtual_network_peering" "peer-to-tsnp-hub-westus2" {
  name                         = var.vnet_peering_name
  resource_group_name          = var.resource_group_name
  virtual_network_name         = azurerm_virtual_network.RMIS_NonProd_DMZ_VNET.name
  remote_virtual_network_id    = var.remote_virtual_network_id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = true
  use_remote_gateways          = true
}
//********************************************************************************************


//RMIS NonProd Private VNET - CODE

//Creating VNET - RMIS NonProd Private VNET
//********************************************************************************************
resource "azurerm_virtual_network" "RMIS_NonProd_Private_VNET" {
  name                = var.private_vnet_name
  resource_group_name = var.private_resource_group_name
  location            = var.private_vnet_location
  address_space       = var.private_address_space
  dns_servers         = var.private_dns_servers
  tags                = var.private_tags

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************


//Creating Subnet1 for - RMIS NonProd Private Subnet 1
//********************************************************************************************
resource "azurerm_subnet" "RMIS_NonProd_Private_VNET_Subnet1" {
  name                 = var.private_subnet1_name
  resource_group_name  = var.private_resource_group_name
  virtual_network_name = azurerm_virtual_network.RMIS_NonProd_Private_VNET.name
  address_prefixes     = var.private_subnet1_prefixes
  service_endpoints    = var.private_subnet_service_endpoints

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************

//Creating Subnet2 for - RMIS NonProd Private Subnet 2
//********************************************************************************************
resource "azurerm_subnet" "RMIS_NonProd_Private_VNET_Subnet2" {
  name                 = var.private_subnet2_name
  resource_group_name  = var.private_resource_group_name
  virtual_network_name = azurerm_virtual_network.RMIS_NonProd_Private_VNET.name
  address_prefixes     = var.private_subnet2_prefixes
  service_endpoints    = var.private_subnet_service_endpoints

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************

//Creating Subnet3 for - NonProd Private Subnet 3
//********************************************************************************************
resource "azurerm_subnet" "RMIS_NonProd_Private_VNET_Subnet3" {
  name                 = var.private_subnet3_name
  resource_group_name  = var.private_resource_group_name
  virtual_network_name = azurerm_virtual_network.RMIS_NonProd_Private_VNET.name
  address_prefixes     = var.private_subnet3_prefixes
  service_endpoints    = var.private_subnet_service_endpoints

  timeouts {
    create = local.timeout_duration
    delete = local.timeout_duration
  }
}
//********************************************************************************************

//Virtual Network Peering - peer-to-tsnp-vnet-RMISProdPriv(This is hub to spoke peering)
//********************************************************************************************
resource "azurerm_virtual_network_peering" "private_peer-to-tsnp-hub-westus2" {
  name                         = var.private_vnet_peering_name
  resource_group_name          = var.private_resource_group_name
  virtual_network_name         = azurerm_virtual_network.RMIS_NonProd_Private_VNET.name
  remote_virtual_network_id    = var.private_remote_virtual_network_id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = true
  use_remote_gateways          = true
}
//********************************************************************************************