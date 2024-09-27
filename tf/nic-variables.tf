variable "NIC_ENABLED" {
  type    = bool
  default = true
}

locals {
  nic_spoke = [
    {
      name                         = upper("nic-${var.PROJECT_NAME}-spoke-01")
      enabled                      = var.NIC_ENABLED
      location                     = module.rg_spoke[0].location
      rg_name                      = module.rg_spoke[0].name
      ip_config_name               = "ipconfig-${var.PROJECT_NAME}-spoke-01"
      subnet_id                    = module.subnet_spoke[0].id
      private_ip_adress_allocation = "Dynamic"
      ip_configuration_name        = "ipconfig-${var.PROJECT_NAME}-spoke-01"
      tags = {
        hidden-title = "spoke NIC"
        Description  = "Network Interface"
      }
    }
  ]
}

