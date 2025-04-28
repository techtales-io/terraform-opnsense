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
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 4.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 4.8.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_firewall_filters"></a> [firewall\_filters](#module\_firewall\_filters) | ../modules/opnsense/firewall-filter | n/a |
| <a name="module_unbound_host_overrides"></a> [unbound\_host\_overrides](#module\_unbound\_host\_overrides) | ../modules/opnsense/unbound-host-override | n/a |
| <a name="module_vlan_interfaces"></a> [vlan\_interfaces](#module\_vlan\_interfaces) | ../modules/opnsense/vlan-interface | n/a |
| <a name="module_yaml"></a> [yaml](#module\_yaml) | ../modules/data/yaml-loader | n/a |

## Resources

| Name | Type |
|------|------|
| [vault_generic_secret.terraform_opnsense](https://registry.terraform.io/providers/hashicorp/vault/4.8.0/docs/data-sources/generic_secret) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->

<!-- prettier-ignore-end -->
