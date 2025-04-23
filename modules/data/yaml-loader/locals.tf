locals {
  # Function to read and decode YAML files
  manifests = {
    for v in fileset("${path.root}/../data", "**/*.yaml") :
    basename(v) => yamldecode(file("${path.root}/../data/${v}"))
  }

  # Filter and ogranize server(s)
  vlan_interfaces = {
    for v in local.manifests :
    v.metadata.name => v
    if v.kind == "OpnsenseVlanInterface"
  }

  # Filter and organize categories
  firewall_filters = {
    for v in local.manifests :
    v.metadata.name => v
    if v.kind == "OpnsenseFirewallFilter"
  }

  # Filter and organize host overrides
  unbound_host_overrides = {
    for v in local.manifests :
    "${v.metadata.name}.${v.metadata.namespace}" => v
    if v.kind == "OpnsenseUnboundHostOverride"
  }
}
