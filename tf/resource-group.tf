# Terraform module to create resource groups based on the locals using for_each
module "spoke_rg" {
  source   = "../tf-modules/resource-group"
  for_each = local.rg_spoke

  ENABLED  = each.value.enabled
  NAME     = each.value.name
  LOCATION = each.value.location
  TAGS     = merge(local.global_tags, each.value.tags)
}