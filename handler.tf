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
  command   = "export container_id_nb=$(sudo docker ps | grep notificationbackend | awk  {'print $1'}) && echo ${container_id_nb} && sudo docker stop --time=700 ${container_id_nb}"
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
