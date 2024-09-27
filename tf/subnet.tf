module "subnet_spoke" {
  source   = "../tf-modules/networking/subnet"
  for_each = local.snet_spoke

  SNET_ENABLED                 = each.value.enabled
  NAME                         = format("Subnet_%s", replace(each.value.subnet_address_space, "/", "_"))
  RG_NAME                      = each.value.resource_group_name
  VNET_NAME                    = each.value.vnet_name
  SUBNET_ADDRESS_SPACE         = each.value.subnet_address_space
  END_NETWORK_POLICIES_ENABLED = each.value.end_network_policies_enabled
  NETWORK_POLICIES_ENABLED     = each.value.network_policies_enabled
  SERVICE_ENDPOINTS            = each.value.service_endpoints
  DELEGATION_NAME              = each.value.delegation_name
  DELEGATION_SERVICE_NAME      = each.value.delegation_service_name
  DELEGATION_SERVICE_ACTIONS   = each.value.delegation_service_actions
  TAGS                         = merge(local.global_tags, each.value.tags)
}