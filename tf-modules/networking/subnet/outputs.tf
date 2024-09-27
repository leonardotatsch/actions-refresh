output "id" {
  value = var.SNET_ENABLED == true ? azurerm_subnet.subnet[0].id : null
}