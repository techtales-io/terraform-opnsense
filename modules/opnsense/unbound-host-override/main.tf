terraform {
  required_version = ">= 1.9.0, <= 1.10.5"

  required_providers {
    # https://registry.terraform.io/providers/browningluke/opnsense/latest/docs
    opnsense = {
      source  = "browningluke/opnsense"
      version = "0.11.0"
    }
  }
}

# https://registry.terraform.io/providers/browningluke/opnsense/latest/docs/resources/unbound_host_override
resource "opnsense_unbound_host_override" "main" {
  # required fields
  domain   = var.config.spec.domain
  hostname = var.config.spec.hostname

  # optional fields
  description = try(length(var.config.spec.description) > 0, false) ? var.config.spec.description : "managed by techtales-io/terraform-opnsense"
  enabled     = can(var.config.spec.disabled) && var.config.spec.disabled == true ? false : true
  mx_host     = can(var.config.spec.mxHost) ? var.config.spec.mxHost : null
  mx_priority = can(var.config.spec.mxPriority) ? var.config.spec.mxPriority : -1
  server      = can(var.config.spec.server) ? var.config.spec.server : null
  type        = can(var.config.spec.type) ? var.config.spec.type : "A"
}
