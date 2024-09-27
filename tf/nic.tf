module "nic_spoke" {
  source   = "../tf-modules/networking/network-interface"
  count = length(local.nic_spoke)

  NETW_INTERFACE_ENABLED       = local.nic_spoke[count.index].enabled
  NAME                         = local.nic_spoke[count.index].name
  LOCATION                     = local.nic_spoke[count.index].location
  RG_NAME                      = local.nic_spoke[count.index].rg_name
  IP_CONFIGURATION_NAME        = local.nic_spoke[count.index].ip_configuration_name
  SUBNET_ID                    = local.nic_spoke[count.index].subnet_id
  PRIVATE_IP_ADRESS_ALLOCATION = local.nic_spoke[count.index].private_ip_adress_allocation
  TAGS                         = merge(local.global_tags, local.nic_spoke[count.index].tags)
}