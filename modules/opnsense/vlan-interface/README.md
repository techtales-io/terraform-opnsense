<!-- markdownlint-disable MD041 -->
<!-- markdownlint-disable MD033 -->
<!-- markdownlint-disable MD028 -->

# TF DOCS

<!-- prettier-ignore-start -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
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
| [opnsense_interfaces_vlan.main](https://registry.terraform.io/providers/browningluke/opnsense/0.11.0/docs/resources/interfaces_vlan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_config"></a> [config](#input\_config) | n/a | <pre>object({<br/>    apiVersion = string<br/>    kind       = string<br/>    metadata = object({<br/>      name      = string<br/>      namespace = optional(string)<br/>    })<br/>    spec = object({<br/>      parent    = string<br/>      vlanId    = number<br/>      priority  = optional(number)<br/>      description = optional(string)<br/>      device = optional(string)<br/>    })<br/>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data"></a> [data](#output\_data) | n/a |
<!-- END_TF_DOCS -->

<!-- prettier-ignore-end -->
