output "name" {
  value = var.VNET_ENABLED == "true" ? azurerm_virtual_network.vnet[0].name : null
}

output "id" {
  value = var.VNET_ENABLED == "true" ? azurerm_virtual_network.vnet[0].id : null
}