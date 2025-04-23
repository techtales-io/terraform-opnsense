variable "config" {
  type = object({
    apiVersion = string
    kind       = string
    metadata = object({
      name      = string
      namespace = optional(string)
    })
    spec = object({
      action     = string
      direction  = string
      interfaces = list(string)
      protocol   = string

      description = optional(string)
      destination = optional(object({
        invert = optional(bool)
        net    = optional(string)
        port   = optional(string)
      }))
      disabled   = optional(bool)
      gateway    = optional(string)
      ipProtocol = optional(string)
      log        = optional(bool)
      quick      = optional(bool)
      sequence   = optional(number)
      source = optional(object({
        invert = optional(bool)
        net    = optional(string)
        port   = optional(string)
      }))
    })
  })

  validation {
    condition     = var.config.apiVersion == "terraform.techtales.io/v1alpha1"
    error_message = "The api must be `terraform.techtales.io` in version `v1alpha1`."
  }

  validation {
    condition     = var.config.kind == "OpnsenseFirewallFilter"
    error_message = "The kind must be 'OpnsenseFirewallFilter'."
  }

  validation {
    condition     = can(regex("^[a-z0-9-.]+$", var.config.metadata.name)) && var.config.metadata.name != ""
    error_message = "The metadata.name must be a non-empty string."
  }

  validation {
    condition     = contains(["pass", "block", "reject"], lower(var.config.spec.action))
    error_message = "The spec.action must be one of 'pass', 'block', or 'reject'."
  }

  validation {
    condition     = length(var.config.spec.interfaces) > 0
    error_message = "The `interface` list in the spec must contain at least one item."
  }

  validation {
    condition     = contains(["in", "out"], lower(var.config.spec.direction))
    error_message = "The spec.action must be one of 'in', or 'out'."
  }

  validation {
    condition     = can(regex("^[a-zA-Z]+$", var.config.spec.protocol)) && var.config.spec.protocol != ""
    error_message = "The spec.protocol must be a non-empty string."
  }

  validation {
    condition     = can(regex("^[0-9]+$", var.config.spec.sequence)) && tonumber(var.config.spec.sequence) >= 0 && tonumber(var.config.spec.sequence) < 200000
    error_message = "The spec.sequence must be a number between 0 and bellow 200000."
  }

}
