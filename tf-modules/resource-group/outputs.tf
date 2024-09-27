output "name" {
  value = var.RG_ENABLED == true ? azurerm_resource_group.rg[0].name : null
}

output "location" {
  value = var.RG_ENABLED == true ? azurerm_resource_group.rg[0].location : null
}

output "id" {
  value = var.RG_ENABLED == true ? azurerm_resource_group.rg[0].id : null
}
