terraform {
  required_version = ">= 1.9.0"

  required_providers {
    # https://registry.terraform.io/providers/browningluke/opnsense/latest/docs
    opnsense = {
      source  = "browningluke/opnsense"
      version = "0.11.0"
    }
  }
}

resource "opnsense_firewall_filter" "main" {
  # required fields
  action    = var.config.spec.action
  direction = var.config.spec.direction
  interface = var.config.spec.interfaces
  protocol  = can(var.config.spec.protoco) ? var.config.spec.protocol : "any"

  # optional fields
  description = can(var.config.spec.description) ? var.config.spec.description : ""
  destination = can(var.config.spec.destination) ? var.config.spec.destination : {}
  enabled     = can(var.config.spec.disabled) && var.config.spec.disabled == true ? false : true
  # gateway = can(var.config.spec.gateway) ? var.config.spec.gateway : ""
  # ip_protocol = can(var.config.spec.ipProtocol) ? var.config.spec.ipProtocol : "inet"
  # log = can(var.config.spec.log) && var.config.spec.log == true ? true : false
  log = true
  # quick = can(var.config.spec.quick) && var.config.spec.quick == true ? true : false
  sequence = can(var.config.spec.sequence) ? var.config.spec.sequence : 1
  source   = can(var.config.spec.source) ? var.config.spec.source : {}
}
