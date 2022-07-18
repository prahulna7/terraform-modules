//VNET Variables - tsnp-vnet-RMISNonProdDMZ
//********************************************************************************************
vnet_name           = "tsnp-vnet-RMISNonProdDMZ"
resource_group_name = "tsnp-Network_RMISNonProdDMZ"
vnet_location       = "West US 2"
address_space       = ["172.29.248.0/24"]
dns_servers         = ["172.29.0.4", "172.29.0.5"]

tags = {
  Environment = "NonProdDMZ",
  Dept        = "RMIS"
}
//********************************************************************************************

//Subnet Variables - tsnp-vnet-RMISNonProdDMZ
//********************************************************************************************
subnet1_name             = "NonProdRMISDMZSubnet1"
subnet2_name             = "NonProdRMISDMZSubnet2"
subnet3_name             = "NonProdRMISDMZSubnet3"
subnet1_prefixes         = ["172.29.248.0/26"]
subnet2_prefixes         = ["172.29.248.64/26"]
subnet3_prefixes         = ["172.29.248.128/26"]
subnet_service_endpoints = []
//********************************************************************************************

//Virtual Network Peering - 
//********************************************************************************************
vnet_peering_name         = "tsnp-hub-westus2"
remote_virtual_network_id = ""
//********************************************************************************************


//VNET Variables - tsnp-vnet-RMISNonProdDMZ
//********************************************************************************************
private_vnet_name           = "tsnp-vnet-RMISNonProdPriv"
private_resource_group_name = "tsnp-Network_RMISNonProdPriv"
private_vnet_location       = "West US 2"
private_address_space       = ["172.29.250.0/24"]
private_dns_servers         = ["172.30.0.6", "172.30.0.7"]

private_tags = {
  Environment = "NonProdPrivate",
  Dept        = "RMIS"
}
//********************************************************************************************

//Subnet Variables - tsnp-vnet-RMISNonProdDMZ
//********************************************************************************************
private_subnet1_name             = "NonProdRMISPrivSubnet1"
private_subnet2_name             = "NonProdRMISPrivSubnet2"
private_subnet3_name             = "NonProdRMISPrivSubnet3"
private_subnet1_prefixes         = ["172.29.250.0/26"]
private_subnet2_prefixes         = ["172.29.250.64/26"]
private_subnet3_prefixes         = ["172.29.250.128/26"]
private_subnet_service_endpoints = []
//********************************************************************************************

//Virtual Network Peering - 
//********************************************************************************************
private_vnet_peering_name         = "private-tsnp-hub-westus2"
private_remote_virtual_network_id = ""
//********************************************************************************************
