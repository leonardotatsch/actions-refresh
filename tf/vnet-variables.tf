variable "VNET_ENABLED" {
  type    = bool
  default = true
}
locals {
  vnet_spoke = [
    {
      name               = lower("vnet-${var.PROJECT_NAME}-spoke1-01")
      enabled            = var.VNET_ENABLED
      rg_name            = module.spoke_rg[0].name
      location           = module.spoke_rg[0].location
      vnet_address_space = "10.100.1.0/24"
      tags = {
        hidden-title = "Spoke1 VNET"
        Description  = "VNET used for Spoke 1"
      }
    },
    {
      name               = lower("vnet-${var.PROJECT_NAME}-spoke2-01")
      enabled            = var.VNET_ENABLED
      rg_name            = module.spoke_rg[1].name
      location           = module.spoke_rg[1].location
      vnet_address_space = "10.100.2.0/24"
      tags = {
        hidden-title = "Spoke2 VNET"
        Description  = "VNET used for Spoke 2"
      }
    }
  ]
}