module "resource_group_region1" {
  source = "../tf-modules/resource-group"

  ENABLED  = var.RG_ENABLED
  NAME     = local.rg_region1.name
  LOCATION = var.LOCATION_EU
  TAGS     = merge(local.global_tags, local.rg_region1.tags)
}
