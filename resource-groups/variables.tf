//Subscription = ts_nonprod08_ea(npRMISDMZ) 
//Resource Group Variables
variable "client" {
  description = "(Required) Specify the client name"
  type        = string
  default     = "tsnp"
}
variable "prefix" {
  description = "(Required) Specify the prefix after the client name"
  type        = string
  default     = "Network"
}
variable "location" {
  description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string
  default     = "West US 2"
}
variable "tags" {
  description = "(Optional) mapping of tagging assiged to all the resources"
  type        = map(any)
  default = {
    "Environment" = "NonProdDMZ",
    "Dept"        = "RMIS"
  }
}
variable "env" {
  description = "(Required) Specify the client name"
  type        = string
  default     = "NonProd"
}
variable "prefix_shared" {
  description = "(Required) Specify the prefix after the client name"
  type        = string
  default     = "Shared"
}
variable "tags2" {
  description = "(Optional) mapping of tagging assiged to all the resources"
  type        = map(any)
  default = {
    "Environment" = "NonProdPrivate",
    "Dept"        = "RMIS"
  }
}
variable "tags3" {
  description = "(Optional) mapping of tagging assiged to all the resources"
  type        = map(any)
  default = {
    "Environment" = "NonProdDMZ",
    "Dept"        = "Involta"
  }
}
variable "tags4" {
  description = "(Optional) mapping of tagging assiged to all the resources"
  type        = map(any)
  default = {
    "Environment" = "NonProdPrivate",
    "Dept"        = "Involta"
  }
}

