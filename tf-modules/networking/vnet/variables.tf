/************************************************************ common variables ************************************************************/
variable "RG_NAME" {
  type        = string
  description = "(Required) The name of the resource group. Must be unique on your Azure subscription."
}

variable "TAGS" {
  type        = map(any)
  description = "Generic tags"
}

/************************************************************ VNET ************************************************************/
variable "VNET_ENABLED" {
  type    = bool
  default = true
}

variable "LOCATION" {
  type        = string
  description = "(Required) The location where the resource group should be created. For a list of all Azure locations, please consult this link or run az account list-locations --output table."
}

variable "NAME" {
  type        = string
  description = "(optional) describe your variable"
}
variable "VNET_ADDRESS_SPACE" {
  type        = list(string)
  description = "(optional) describe your variable"
}
variable "DNS_SERVER_IPS" {
  type        = list(string)
  description = "(optional) describe your variable"
  default     = null
}