variable "PROJECT_NAME" {
  type = string
  default = "ACCELERATOR"
}

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

  global_tags = {
    BusinessOwner = "CHANGEME" #var.BUSINESSOWNER_TAG
    Environment   = "SANDBOX" #var.ENVIRONMENT
    ServiceModel  = "Managed by CHANGEME" #var.SERVICEMODEL
  }
}