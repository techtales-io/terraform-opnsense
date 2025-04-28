<!-- markdownlint-disable MD041 -->
<!-- markdownlint-disable MD033 -->
<!-- markdownlint-disable MD028 -->

# TF DOCS

<!-- prettier-ignore-start -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0, <= 1.10.5 |
| <a name="requirement_opnsense"></a> [opnsense](#requirement\_opnsense) | 0.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_opnsense"></a> [opnsense](#provider\_opnsense) | 0.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [opnsense_unbound_host_override.main](https://registry.terraform.io/providers/browningluke/opnsense/0.11.0/docs/resources/unbound_host_override) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config"></a> [config](#input\_config) | n/a | <pre>object({<br/>    apiVersion = string<br/>    kind       = string<br/>    metadata = object({<br/>      name      = string<br/>      namespace = optional(string)<br/>    })<br/>    spec = object({<br/>      type     = string<br/>      domain   = string<br/>      hostname = string<br/><br/>      description = optional(string)<br/>      disabled    = optional(bool)<br/>      mxHost      = optional(string)<br/>      mxPriority  = optional(number)<br/>      server      = optional(string)<br/>    })<br/>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data"></a> [data](#output\_data) | n/a |
<!-- END_TF_DOCS -->

<!-- prettier-ignore-end -->
