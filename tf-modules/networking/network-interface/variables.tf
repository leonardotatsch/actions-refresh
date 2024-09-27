variable "NETW_INTERFACE_ENABLED" {
  type = bool
  default = true
}

variable "NAME" {
  type    = string
  default = ""
}

variable "LOCATION" {
  type    = string
  default = ""
}

variable "RG_NAME" {
  type    = string
  default = ""
}

variable "IP_CONFIGURATION_NAME" {
  type    = string
  default = ""
}

variable "SUBNET_ID" {
  type    = string
  default = ""
}

variable "PRIVATE_IP_ADRESS_ALLOCATION" {
  type    = string
  default = ""
}

variable "TAGS" {
  type    = map(any)
  default = {}
}