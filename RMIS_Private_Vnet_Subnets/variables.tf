//VNET Variables - tsnp-vnet-RMISNonProdDMZ
//********************************************************************************************
variable "private_vnet_name" {
  description = "Name of the vnet to create"
  type        = string

}

variable "private_resource_group_name" {
  description = "Name of the resource group to be imported."
  type        = string
}

variable "private_vnet_location" {
  description = "Location to create the vnet"
  type        = string

}

variable "private_address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."

}



# If no values specified, this defaults to Azure DNS 
variable "private_dns_servers" {
  description = "The DNS servers to be used with vNet."
  type        = list(string)

}

variable "private_tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(any)

}

locals {
  timeout_duration = "2h"
}
//********************************************************************************************

//VNET Variables - tsnp-vnet-RMISNonProdDMZ
//********************************************************************************************
variable "private_subnet1_name" {
  description = "A list of public subnets inside the vNet."
  type        = string

}

variable "private_subnet2_name" {
  description = "A list of public subnets inside the vNet."
  type        = string

}

variable "private_subnet3_name" {
  description = "A list of public subnets inside the vNet."
  type        = string

}

variable "private_subnet1_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)

}

variable "private_subnet2_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)

}

variable "private_subnet3_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)

}

variable "private_subnet_service_endpoints" {
  description = "A map of subnet name to service endpoints to add to the subnet."
  type        = list(string)

}
//********************************************************************************************

//Virtual Network Peering - 
//********************************************************************************************
variable "private_vnet_peering_name" {
  description = "specify the virtual network peering name"
  type        = string

}

variable "private_remote_virtual_network_id" {
  description = "specify the remote virtual network id"
  type        = string

}

//********************************************************************************************
