module "nic_spoke" {
  source   = "../../tf-modules/networking/network-interface"
  for_each = local.nic_spoke

  NETW_INTERFACE_ENABLED       = each.value.enabled
  NAME                         = each.value.name
  LOCATION                     = each.value.location
  RG_NAME                      = each.value.rg_name
  IP_CONFIGURATION_NAME        = each.value.ip_config_name
  SUBNET_ID                    = each.value.subnet_id
  PRIVATE_IP_ADRESS_ALLOCATION = each.value.private_ip_adress_allocation
  TAGS                         = merge(local.global_tags, each.value.tags)
}