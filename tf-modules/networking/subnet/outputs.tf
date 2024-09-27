output "id" {
  value = var.ENABLED == "true" ? azurerm_subnet.subnet[0].id : null
}