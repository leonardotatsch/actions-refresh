variable "PROJECT_NAME" {
  type    = string
  default = "ACCELERATOR"
}

variable "LOCATION_EU" {
  type        = string
  description = "The name of the resource group location"
  default     = "westeurope"
}

variable "LOCATION_US" {
  type        = string
  description = "The name of the resource group location"
  default     = "centralus"
}

variable "LOCATION_SHARED" {
  type        = string
  description = "The name of the resource group location"
  default     = "westeurope"
}

variable "ENVIRONMENT" {
  type        = string
  description = "(Required) The name of the environment"
  default     = "sandbox"
}

locals {

  global_tags = {
    CreatedBy     = "IaC Pipelines"
    BusinessOwner = "POC"            #var.BUSINESSOWNER_TAG
    Environment   = "SANDBOX"            #var.ENVIRONMENT
    ServiceModel  = "Managed by POC" #var.SERVICEMODEL
  }
}