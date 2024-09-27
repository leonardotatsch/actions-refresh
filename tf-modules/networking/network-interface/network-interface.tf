resource "azurerm_network_interface" "network_interface" {
  count               = var.NETW_INTERFACE_ENABLED == true ? 1 : 0
  name                = var.NAME
  location            = var.LOCATION
  resource_group_name = var.RG_NAME
  tags                = var.TAGS

  ip_configuration {
    name                          = var.IP_CONFIGURATION_NAME
    subnet_id                     = var.SUBNET_ID
    private_ip_address_allocation = var.PRIVATE_IP_ADRESS_ALLOCATION
  }
}