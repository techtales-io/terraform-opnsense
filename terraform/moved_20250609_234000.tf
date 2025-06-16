# Moved blocks to handle the key format change from name to namespace/name

# Firewall Filters - change from name to techtales.io/name
moved {
  from = module.firewall_filters["iot-allow-gateway"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/iot-allow-gateway"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["iot-deny-iot"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/iot-deny-iot"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["iot-deny-lan"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/iot-deny-lan"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["kids-allow-adguard"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/kids-allow-adguard"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["kids-allow-gateway"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/kids-allow-gateway"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["kids-allow-minecraft"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/kids-allow-minecraft"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["kids-allow-printer"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/kids-allow-printer"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["kids-allow-talos-flux-ingress"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/kids-allow-talos-flux-ingress"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["kids-deny-lan"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/kids-deny-lan"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["qingping-alexroom-allow-mqtt"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/qingping-alexroom-allow-mqtt"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["qingping-bedroom-allow-mqtt"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/qingping-bedroom-allow-mqtt"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["qingping-domiroom-allow-mqtt"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/qingping-domiroom-allow-mqtt"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["qingping-livingroom-allow-mqtt"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/qingping-livingroom-allow-mqtt"].opnsense_firewall_filter.main
}

moved {
  from = module.firewall_filters["qingping-purple-allow-mqtt"].opnsense_firewall_filter.main
  to   = module.firewall_filters["techtales.io/qingping-purple-allow-mqtt"].opnsense_firewall_filter.main
}

# Unbound Host Overrides - change from name.namespace to namespace/name
moved {
  from = module.unbound_host_overrides["adguard.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/adguard"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["alertmanager.kube-nas.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["kube-nas.techtales.io/alertmanager"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["alertmanager.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/alertmanager"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["anubis-grafana.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/anubis-grafana"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["argo-workflows.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/argo-workflows"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-discord-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-discord-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-discord.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-discord"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-gcloud-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-gcloud-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-gcloud.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-gcloud"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-github-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-github-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-github.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-github"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-gworkspace.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-gworkspace"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-gworkspace-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-gworkspace-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-minio.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-minio"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-minio-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-minio-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-opnsense.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-opnsense"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-opnsense-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-opnsense-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-vault.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-vault"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-techtales-io-terraform-vault-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-techtales-io-terraform-vault-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-tyriis-terraform-github.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-tyriis-terraform-github"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["atlantis-tyriis-terraform-github-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/atlantis-tyriis-terraform-github-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["auth.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/auth"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["auth.tyriis.dev"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["tyriis.dev/auth"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["backstage.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/backstage"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["blackbox-exporter.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/blackbox-exporter"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["bunkerweb.tyriis.dev"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["tyriis.dev/bunkerweb"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["code-server.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/code-server"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["echo-server.bunker.tyriis.dev"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["bunker.tyriis.dev/echo-server"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["echo-server.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/echo-server"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["echo-server.tyriis.dev"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["tyriis.dev/echo-server"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["esphome.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/esphome"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["flux-webhook-kube-nas.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/flux-webhook-kube-nas"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["flux-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/flux-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["govee2mqtt.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/govee2mqtt"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["grafana.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/grafana"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["hajimari.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/hajimari"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["harbor.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/harbor"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["harbor.tyriis.dev"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["tyriis.dev/harbor"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["hass.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/hass"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["home.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/home"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["hotspot.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/hotspot"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["hubble.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/hubble"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["it-tools.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/it-tools"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["kromgo.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/kromgo"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["kube-nas.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/kube-nas"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["links.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/links"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["loki.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/loki"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["minio.nas.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["nas.techtales.io/minio"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["minio.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/minio"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["minio.tyriis.dev"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["tyriis.dev/minio"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["mqtt.lan"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["lan/mqtt"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["n8n.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/n8n"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["n8n-webhook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/n8n-webhook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["nas.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/nas"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["node-red.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/node-red"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["opnsense.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/opnsense"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["prometheus.kube-nas.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["kube-nas.techtales.io/prometheus"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["prometheus.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/prometheus"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["redirect-service.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/redirect-service"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["rook.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/rook"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["s3.nas.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["nas.techtales.io/s3"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["s3.tyriis.dev"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["tyriis.dev/s3"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["scanservjs.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/scanservjs"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["secrets.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/secrets"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["speedtest.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/speedtest"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["status.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/status"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["syncthing.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/syncthing"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["talos.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/talos"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["tekton.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/tekton"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["traefik.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/traefik"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["unifi-controller.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/unifi-controller"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["unifi.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/unifi"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["vault.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/vault"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["vault.tyriis.dev"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["tyriis.dev/vault"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["windmill.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/windmill"].opnsense_unbound_host_override.main
}

moved {
  from = module.unbound_host_overrides["zigbee2mqtt.techtales.io"].opnsense_unbound_host_override.main
  to   = module.unbound_host_overrides["techtales.io/zigbee2mqtt"].opnsense_unbound_host_override.main
}

moved {
  from = module.vlan_interfaces["kids"].opnsense_interfaces_vlan.main
  to   = module.vlan_interfaces["techtales.io/kids"].opnsense_interfaces_vlan.main
}

moved {
  from = module.vlan_interfaces["iot"].opnsense_interfaces_vlan.main
  to   = module.vlan_interfaces["techtales.io/iot"].opnsense_interfaces_vlan.main
}
