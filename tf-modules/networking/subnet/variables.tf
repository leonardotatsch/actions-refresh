/************************************************************ common variables ************************************************************/
variable "RG_NAME" {
  type        = string
  description = "(Required) The name of the resource group. Must be unique on your Azure subscription."
}

/************************************************************ Subnet ************************************************************/
variable "SNET_ENABLED" {
  type = bool
  default = true
}
variable "VNET_NAME" {
  type = string
}

variable "NAME" {
  type = string
}
variable "SUBNET_ADDRESS_SPACE" {
  type = list(string)
}

variable "PRIVATE_ENDPOINT_NETWORK_POLICIES" {
  type    = string
  default = "Enabled"
}

variable "NETWORK_POLICIES_ENABLED" {
  type    = string
  default = "true"
}

variable "SERVICE_ENDPOINTS" {
  type    = list(string)
  default = []
}

variable "DELEGATION_NAME" {
  type    = string
  default = ""
}

variable "DELEGATION_SERVICE_NAME" {
  type    = string
  default = ""
}

variable "DELEGATION_SERVICE_ACTIONS" {
  type    = list(string)
  default = []
}