module "subnet_spoke" {
  source   = "../tf-modules/networking/subnet"
  count = length(local.subnet_spoke)

  SNET_ENABLED                 = local.subnet_spoke[count.index].enabled
  NAME                         = format("Subnet_%s", replace(element(local.subnet_spoke[count.index].subnet_address_space, 0), "/", "_"))
  RG_NAME                      = local.subnet_spoke[count.index].resource_group_name
  VNET_NAME                    = local.subnet_spoke[count.index].vnet_name
  SUBNET_ADDRESS_SPACE         = local.subnet_spoke[count.index].subnet_address_space
  PRIVATE_ENDPOINT_NETWORK_POLICIES = local.subnet_spoke[count.index].private_endpoint_network_policies
  NETWORK_POLICIES_ENABLED     = local.subnet_spoke[count.index].network_policies_enabled
  SERVICE_ENDPOINTS            = local.subnet_spoke[count.index].service_endpoints
  DELEGATION_NAME              = local.subnet_spoke[count.index].delegation_name
  DELEGATION_SERVICE_NAME      = local.subnet_spoke[count.index].delegation_service_name
  DELEGATION_SERVICE_ACTIONS   = local.subnet_spoke[count.index].delegation_service_actions
}