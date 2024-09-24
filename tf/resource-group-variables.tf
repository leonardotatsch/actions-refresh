variable "LOCATION_EU" {
  type        = string
  description = "(Required) The name of the resource group location"
  default     = "westeurope"
}

variable "LOCATION_US" {
  type        = string
  description = "(Required) The name of the resource group location"
  default     = "centralus"
}

variable "LOCATION_SHARED" {
  type        = string
  description = "(Required) The name of the resource group location"
  default     = "westeurope"
}

locals {
  rg_region1 = {
    name = upper("rg-accelerator-we-rg01")
    tags = {
      hidden-title = "Test Resource Group"
      Description  = "Resource group used for testing"
    }
  }
}
