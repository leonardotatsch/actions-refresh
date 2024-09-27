output "id" {
  value = var.NETW_INTERFACE_ENABLED == true ? azurerm_network_interface.network_interface[0].id : null
}

output "private_ip_address" {
  value = var.NETW_INTERFACE_ENABLED == true ? azurerm_network_interface.network_interface[0].private_ip_address : null
}

