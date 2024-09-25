variable "RG_ENABLED" {
  type        = bool
  description = "Enable the resource group creation"
  default     = true
}
locals {
  rg_region1 = {
    name = upper("rg-${var.PROJECT_NAME}-we-rg01")
    tags = {
      hidden-title = "Test Resource Group"
      Description  = "Resource group used for testing"
    }
  }
}
