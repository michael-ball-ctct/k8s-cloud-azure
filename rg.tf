# resource "azurerm_resource_group" "rg" {
#   count    = var.create_rg ? 1 : 0
#   name     = var.resource_group_name
#   location = var.location
# }

# data "azurerm_resource_group" "rg" {
#   count = var.create_rg ? 0 : 1
#   name  = var.resource_group_name
# }

# locals {
#   rg_name = var.create_rg ? azurerm_resource_group.rg[0].name     : data.azurerm_resource_group.rg[0].name
#   rg_loc  = var.create_rg ? azurerm_resource_group.rg[0].location : data.azurerm_resource_group.rg[0].location
# }

# output "rg_name"     { value = local.rg_name }
# output "rg_location" { value = local.rg_loc  }