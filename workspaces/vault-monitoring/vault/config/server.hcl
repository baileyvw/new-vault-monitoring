api_addr  = "http://127.0.0.1:8200"

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = "true"
}

storage "file" {
  path = "workspaces/vault-monitoring/vault/data"
}

telemetry {
  disable_hostname = true
  prometheus_retention_time = "12h"
}

ui = true
disable_mlock = true
