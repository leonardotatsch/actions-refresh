variable "NIC_ENABLED" {
  type    = bool
  default = true
}

locals {
  nic_spoke = [
    {
      name                         = upper("nic-${var.PROJECT_NAME}-spoke-01")
      enabled                      = var.NIC_ENABLED
      location                     = module.spoke_rg.location
      rg_name                      = module.spoke_rg.name
      ip_config_name               = "ipconfig-${var.PROJECT_NAME}-spoke-01"
      subnet_id                    = module.subnet_spoke.id
      private_ip_adress_allocation = "Dynamic"
      tags = {
        hidden-title = "spoke NIC"
        Description  = "Network Interface"
      }
    }
  ]
}

