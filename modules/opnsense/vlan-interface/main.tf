terraform {
  required_version = ">= 1.9.0, <= 1.10.5"

  required_providers {
    # https://registry.terraform.io/providers/browningluke/opnsense/latest/docs
    opnsense = {
      source  = "browningluke/opnsense"
      version = "0.12.0"
    }
  }
}

resource "opnsense_interfaces_vlan" "main" {
  # required fields
  parent = var.config.spec.parent
  tag    = var.config.spec.vlanId

  # optional fields
  description = can(var.config.spec.description) ? var.config.spec.description : ""
  device      = can(var.config.spec.device) ? var.config.spec.device : ""
  priority    = can(var.config.spec.priority) ? var.config.spec.priority : 0
}
