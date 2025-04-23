variable "config" {
  type = object({
    apiVersion = string
    kind       = string
    metadata = object({
      name      = string
      namespace = optional(string)
    })
    spec = object({
      parent      = string
      vlanId      = number
      priority    = optional(number)
      description = optional(string)
      device      = optional(string)
    })
  })

  validation {
    condition     = var.config.apiVersion == "terraform.techtales.io/v1alpha1"
    error_message = "The api must be `terraform.techtales.io` in version `v1alpha1`."
  }

  validation {
    condition     = var.config.kind == "OpnsenseVlanInterface"
    error_message = "The kind must be 'OpnsenseVlanInterface'."
  }

  validation {
    condition     = can(regex("^[a-z0-9-.]+$", var.config.metadata.name)) && var.config.metadata.name != ""
    error_message = "The metadata.name must be a non-empty string."
  }

  validation {
    condition     = can(regex("^[a-z0-9-.]+$", var.config.spec.parent)) && var.config.spec.parent != ""
    error_message = "The spec.parent must be a non-empty string."
  }

  validation {
    condition     = can(regex("^[0-9]+$", var.config.spec.vlanId)) && tonumber(var.config.spec.vlanId) >= 1 && tonumber(var.config.spec.vlanId) <= 1005
    error_message = "The spec.vlanId must be a number between 1 and 1005."
  }

  validation {
    condition     = can(regex("^[0-9]+$", var.config.spec.priority)) && tonumber(var.config.spec.priority) >= 1 && tonumber(var.config.spec.priority) <= 7
    error_message = "The spec.priority must be a number between 0 and 7."
  }
}
