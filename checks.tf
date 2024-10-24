locals {
  pagerduty_detail_template = jsonencode({
    "output" : "{{`{{.Check.Output}}`}}",
    "stackName" : "{{`{{.Entity.Labels.stackname}}`}}"
    "alertGroupingKey" : "nginx-{{`{{.Entity.Labels.stackname}}`}}"
  })

  pagerduty_summary_template = "{{`{{.Check.Name}}`}}/{{`{{.Entity.Name}}`}}"
}

resource "sensu_check" "billing-availability" {
  namespace   = "default"
  command        = "check_http -u / -H 127.0.0.1 -p 80"
  name           = "nginx-availability"
  subscriptions  = ["nginx"]
  runtime_assets = ["monitoring-plugins"]
  publish        = true
  interval       = 10
  annotations = {
    "fatigue_check/occurrences" = "6",
    "fatigue_check/interval"    = "3600",
    "sensu.io/plugins/sensu-pagerduty-handler/config/status-map" : jsonencode({
      "info" : [0],
      "warning" : [127],
      "error" : [2],
      "critical" : [127]
    })
    "sensu.io/plugins/sensu-pagerduty-handler/config/summary-template" : local.pagerduty_summary_template
    "sensu.io/plugins/sensu-pagerduty-handler/config/details-template" : local.pagerduty_detail_template
  }
  handlers = [sensu_handler.pagerdutyV2.name]
}