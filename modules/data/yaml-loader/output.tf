output "data" {
  value = {
    vlan_interfaces        = local.vlan_interfaces
    firewall_filters       = local.firewall_filters
    unbound_host_overrides = local.unbound_host_overrides
  }
}
