# Terraform module to create resource groups based on the locals using for_each
module "rg_spoke" {
  source   = "../tf-modules/resource-group"
  count  = length(local.rg_spoke)

  ENABLED  = local.rg_spoke[count.index].enabled
  NAME     = local.rg_spoke[count.index].name
  LOCATION = local.rg_spoke[count.index].location
  TAGS     = merge(local.global_tags, local.rg_spoke[count.index].tags)
}