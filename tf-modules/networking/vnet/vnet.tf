resource "azurerm_virtual_network" "vnet" {
  count               = var.VNET_ENABLED == true ? 1 : 0
  name                = var.NAME
  resource_group_name = var.RG_NAME
  location            = var.LOCATION
  address_space       = var.VNET_ADDRESS_SPACE
  dns_servers         = var.DNS_SERVER_IPS

  tags = var.TAGS
}