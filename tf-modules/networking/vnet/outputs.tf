output "name" {
  value = var.ENABLED == "true" ? azurerm_virtual_network.vnet[0].name : null
}

output "id" {
  value = var.ENABLED == "true" ? azurerm_virtual_network.vnet[0].id : null
}