variable "config" {
  type = object({
    apiVersion = string
    kind       = string
    metadata = object({
      name      = string
      namespace = optional(string)
    })
    spec = object({
      type     = string
      domain   = string
      hostname = string

      description = optional(string)
      disabled    = optional(bool)
      mxHost      = optional(string)
      mxPriority  = optional(number)
      server      = optional(string)
    })
  })

  validation {
    condition     = var.config.apiVersion == "terraform.techtales.io/v1alpha1"
    error_message = "The api must be `terraform.techtales.io` in version `v1alpha1`."
  }

  validation {
    condition     = var.config.kind == "OpnsenseUnboundHostOverride"
    error_message = "The kind must be 'OpnsenseUnboundHostOverride'."
  }

  validation {
    condition     = can(regex("^[a-z0-9-.]+$", var.config.metadata.name)) && var.config.metadata.name != ""
    error_message = "The metadata.name must be a non-empty string."
  }

  validation {
    condition     = can(regex("^[a-z0-9-.]+$", var.config.spec.domain)) && var.config.spec.domain != ""
    error_message = "The spec.domain must be a non-empty string."
  }

  validation {
    condition     = can(regex("^[a-z0-9-]+$", var.config.spec.hostname)) && var.config.spec.hostname != ""
    error_message = "The spec.hostname must be a non-empty string."
  }

  validation {
    condition     = can(regex("^(A|AAAA|MX)$", var.config.spec.type)) && var.config.spec.type != ""
    error_message = "The spec.type must be one of 'A', 'AAAA', or 'MX'."
  }

  # mxHost and mxPriority must be set when type is MX otherwise it can be empty
  validation {
    condition     = can(var.config.spec.mxHost) && var.config.spec.type != "MX"
    error_message = "The spec.mxHost must not be set if spec.type is not 'MX'."
  }

  validation {
    condition     = can(var.config.spec.mxPriority) && var.config.spec.type != "MX"
    error_message = "The spec.mxPriority must be set if spec.type is 'MX'."
  }

  # server must be valid ip v4 or v6  when type is A or AAAA
  validation {
    condition     = can(regex("^(A|AAAA)$", var.config.spec.type)) && can(regex("^(?:[0-9]{1,3}\\.){3}[0-9]{1,3}$", var.config.spec.server))
    error_message = "The spec.server must be a valid IPv4 address."
  }
}
