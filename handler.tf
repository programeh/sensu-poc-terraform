resource "sensu_handler" "pagerdutyV2" {
  name      = "pagerdutyV2"
  namespace = "default"
  type      = "pipe"
  command   = "sensu-pagerduty-handler  --details-format json"
  timeout   = 0
  env_vars  = {
    PAGERDUTY_TOKEN = "b49d8f2ce0e04205d0ded303ec9f9de2"
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
