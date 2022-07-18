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
