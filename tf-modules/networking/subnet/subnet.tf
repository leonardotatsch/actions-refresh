resource "azurerm_subnet" "subnet" {
  count                                         = var.SNET_ENABLED == "true" ? 1 : 0
  name                                          = var.NAME
  resource_group_name                           = var.RG_NAME
  virtual_network_name                          = var.VNET_NAME
  address_prefixes                              = var.SUBNET_ADDRESS_SPACE
  private_endpoint_network_policies_enabled     = var.END_NETWORK_POLICIES_ENABLED
  private_link_service_network_policies_enabled = var.NETWORK_POLICIES_ENABLED
  service_endpoints                             = var.SERVICE_ENDPOINTS

  dynamic "delegation" {
    for_each = var.DELEGATION_NAME != "" ? [1] : []
    content {
      name = var.DELEGATION_NAME
      service_delegation {
        name    = var.DELEGATION_SERVICE_NAME
        actions = var.DELEGATION_SERVICE_ACTIONS
      }
    }
  }
}

## In order to deploy a Private Link Endpoint on a given subnet, you must set the private_endpoint_network_policies_enabled attribute to false.
## In order to deploy a Private Link Service on a given subnet, you must set the private_link_service_network_policies_enabled attribute to false.
## To utilize network policies like UDR and NSG support, network policy support must be enabled for the subnet.