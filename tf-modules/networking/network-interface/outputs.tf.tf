output "id" {
  value = var.ENABLED == "true" ? azurerm_network_interface.network_interface[0].id : null
}

output "private_ip_address" {
  value = var.ENABLED == "true" ? azurerm_network_interface.network_interface[0].private_ip_address : null
}

