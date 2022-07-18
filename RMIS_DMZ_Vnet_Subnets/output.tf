//Outputs for Vnet and Subnets
output "vnet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.RMIS_NonProd_DMZ_VNET.id
  sensitive   = false
}

output "subnet1_id" {
  description = "The id of the newly created subnet1"
  value       = azurerm_subnet.subnet1.id
  sensitive   = false
}

output "subnet2_id" {
  description = "The id of the newly created subnet2"
  value       = azurerm_subnet.subnet2.id
  sensitive   = false
}

output "subnet3_id" {
  description = "The id of the newly created subnet3"
  value       = azurerm_subnet.subnet3.id
  sensitive   = false
}


//RMIS NonProd Private VNET - Outputs
//Outputs for Vnet and Subnets
output "private_vnet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.RMIS_NonProd_Private_VNET.id
}

output "private_subnet1_id" {
  description = "The id of the newly created subnet1"
  value       = azurerm_subnet.RMIS_NonProd_Private_VNET_Subnet1.id
  sensitive   = false
}

output "private_subnet2_id" {
  description = "The id of the newly created subnet2"
  value       = azurerm_subnet.RMIS_NonProd_Private_VNET_Subnet2.id
  sensitive   = false
}

output "private_subnet3_id" {
  description = "The id of the newly created subnet3"
  value       = azurerm_subnet.RMIS_NonProd_Private_VNET_Subnet3.id
  sensitive   = false
}