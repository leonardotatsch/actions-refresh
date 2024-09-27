module "vnet_spoke" {
  source   = "../tf-modules/networking/vnet"
  for_each = local.vnet_spoke

  ENABLED       = each.value.enabled
  NAME          = each.value.name
  LOCATION      = each.value.location
  RG_NAME       = each.value.rg_name
  ADDRESS_SPACE = each.value.vnet_address_space
  TAGS          = merge(local.global_tags, each.value.tags)
}