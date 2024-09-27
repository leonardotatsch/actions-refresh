module "vnet_spoke" {
  source   = "../tf-modules/networking/vnet"
  for_each = toset(local.vnet_spoke)

  VNET_ENABLED  = each.value.enabled
  NAME          = each.value.name
  LOCATION      = each.value.location
  RG_NAME       = each.value.rg_name
  VNET_ADDRESS_SPACE = each.value.vnet_address_space
  TAGS          = merge(local.global_tags, each.value.tags)
}