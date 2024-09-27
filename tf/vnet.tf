module "vnet_spoke" {
  source   = "../tf-modules/networking/vnet"
  count = length(local.vnet_spoke)

  VNET_ENABLED  = local.vnet_spoke[count.index].enabled
  NAME          = local.vnet_spoke[count.index].name
  LOCATION      = local.vnet_spoke[count.index].location
  RG_NAME       = local.vnet_spoke[count.index].rg_name
  VNET_ADDRESS_SPACE = local.vnet_spoke[count.index].vnet_address_space
  TAGS          = merge(local.global_tags, local.vnet_spoke[count.index].tags)
}