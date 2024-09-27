variable "RG_ENABLED" {
  type        = bool
  description = "Enable the resource group creation"
  default     = true
}
locals {
  rg_spoke = [
    {
      name     = upper("rg-${var.PROJECT_NAME}-spoke1-rg01")
      location = var.LOCATION_EU
      enabled  = var.RG_ENABLED
      tags = {
        hidden-title = "Spoke 1 Resource Group"
        Description  = "Resource group used for Spoke 1"
      }
    },
    {
      name     = upper("rg-${var.PROJECT_NAME}-spoke2-rg01")
      location = var.LOCATION_US
      enabled  = var.RG_ENABLED
      tags = {
        hidden-title = "Spoke 2 Resource Group"
        Description  = "Resource group used for Spoke 2"
      }
    }
  ]
}
