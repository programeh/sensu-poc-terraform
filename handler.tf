resource "sensu_handler" "pagerdutyWarningHandler" {
  name      = "pagerdutyWarningHandler"
  namespace = "default"
  type      = "pipe"
  command   = "sensu-pagerduty-handler  --severity=warning --details-format json"
  timeout   = 5
  env_vars  = {
    PAGERDUTY_TOKEN = "28b3ba1e09714e07c0c610ab02c2c29b"
  }
  filters = [
    "is_incident",
    "not_silenced",
    "fatigue_check",
    "dependencies"
  ]
  runtime_assets = [
    sensu_asset.sensuPagerdutyHandler.name
  ]
}

resource "sensu_handler" "SOPExecuteHandler" {
  name      = "pagerdutySOPHandler"
  namespace = "default"
  type      = "pipe"
  command   = "sudo docker stop --time=700 $(sudo docker ps | grep nginx | awk  {'print $1'})"
  timeout   = 5
  filters = [
    "is_incident",
    "not_silenced",
    "fatigue_check",
    "dependencies"
  ]
  runtime_assets = [
    sensu_asset.sensuPagerdutyHandler.name
  ]
}

resource "sensu_handler" "pagerdutyEscalationHandler" {
  name      = "pagerdutyEscalationHandler"
  namespace = "default"
  type      = "pipe"
  command   = "sensu-pagerduty-handler  --severity=critical --details-format json"
  timeout   = 5
  env_vars  = {
    PAGERDUTY_TOKEN = "28b3ba1e09714e07c0c610ab02c2c29b"
  }
  filters = [
    "is_incident",
    "not_silenced",
    "fatigue_check",
    "dependencies"
  ]
  runtime_assets = [
    sensu_asset.sensuPagerdutyHandler.name
  ]
}


resource "sensu_handler" "pagerdutyV2" {
  name      = "pagerdutyV2"
  namespace = "default"
  type      = "pipe"
  command   = "sensu-pagerduty-handler  --details-format json"
  timeout   = 0
  env_vars  = {
    PAGERDUTY_TOKEN = "28b3ba1e09714e07c0c610ab02c2c29b"
  }
  filters = [
    "is_incident",
    "not_silenced",
    "fatigue_check",
    "dependencies"
  ]
  runtime_assets = [
    sensu_asset.sensuPagerdutyHandler.name
  ]
}
resource "sensu_handler" "SensuRemediationHandler" {
  name = "remediation"
  type = "pipe"
  command = "sensu-go-remediation-handler"
  namespace = "default"
  timeout = 10
  runtime_assets = [sensu_asset.remediation_handler_asset.name]
  env_vars = {
    SENSU_API_USER="pavan"
    SENSU_API_PASS="password"
    SENSU_API_URL="http://43.203.207.128:8080"
  }
}