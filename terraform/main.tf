terraform {
  required_version = ">= 1.9.0, <= 1.10.5"

  required_providers {
    # https://registry.terraform.io/providers/hashicorp/vault/latest/docs
    vault = {
      source  = "hashicorp/vault"
      version = "5.1.0"
    }
    # https://registry.terraform.io/providers/browningluke/opnsense/latest/docs
    opnsense = {
      source  = "browningluke/opnsense"
      version = "0.12.0"
    }
  }
}

module "yaml" {
  source = "../modules/data/yaml-loader"
}

module "vlan_interfaces" {
  for_each = module.yaml.data.vlan_interfaces
  source   = "../modules/opnsense/vlan-interface"
  config   = each.value
}

module "firewall_filters" {
  for_each = module.yaml.data.firewall_filters
  source   = "../modules/opnsense/firewall-filter"
  config   = each.value
}

module "unbound_host_overrides" {
  for_each = module.yaml.data.unbound_host_overrides
  source   = "../modules/opnsense/unbound-host-override"
  config   = each.value
}
