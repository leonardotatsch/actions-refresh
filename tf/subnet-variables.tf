variable "SNET_ENABLED" {
  type = bool
  default = true
}
locals {
  subnet_spoke = [
    {
      enabled                      = var.SNET_ENABLED
      resource_group_name          = module.rg_spoke[0].name
      vnet_name                    = module.vnet_spoke[0].name
      subnet_address_space         = "10.100.1.0/27"
      end_network_policies_enabled = "true"
      network_policies_enabled     = "true"
      service_endpoints            = []
      delegation_name              = ""
      delegation_service_name      = ""
      delegation_service_actions   = []
    },
    {
      enabled                      = var.SNET_ENABLED
      resource_group_name          = module.rg_spoke[1].name
      vnet_name                    = module.vnet_spoke[1].name
      subnet_address_space         = "10.100.2.0/27"
      end_network_policies_enabled = "true"
      network_policies_enabled     = "true"
      service_endpoints            = []
      delegation_name              = ""
      delegation_service_name      = ""
      delegation_service_actions   = []
    }
  ]
}