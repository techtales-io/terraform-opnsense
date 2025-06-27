terraform {
  required_version = ">= 1.9.0, <= 1.10.5"

  required_providers {
    # https://registry.terraform.io/providers/hashicorp/vault/latest/docs
    vault = {
      source  = "hashicorp/vault"
      version = "5.0.0"
    }
    # https://registry.terraform.io/providers/browningluke/opnsense/latest/docs
    opnsense = {
      source  = "browningluke/opnsense"
      version = "0.11.0"
    }
  }
}

module "yaml" {
  source = "../modules/data/yaml-loader"
  path   = "${path.root}/../data"
}

module "vlan_interfaces" {
  for_each = module.yaml.data.by_kind["OpnsenseVlanInterface"]
  source   = "../modules/opnsense/vlan-interface"
  config   = each.value
}

module "firewall_filters" {
  for_each = module.yaml.data.by_kind["OpnsenseFirewallFilter"]
  source   = "../modules/opnsense/firewall-filter"
  config   = each.value
}

module "unbound_host_overrides" {
  for_each = module.yaml.data.by_kind["OpnsenseUnboundHostOverride"]
  source   = "../modules/opnsense/unbound-host-override"
  config   = each.value
}
