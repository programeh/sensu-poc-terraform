locals {
  pagerduty_detail_template = jsonencode({
    "output" : "{{`{{.Check.Output}}`}}",
    "stackName" : "{{`{{.Entity.Labels.stackname}}`}}"
    "alertGroupingKey" : "nginx-{{`{{.Entity.Labels.stackname}}`}}"
  })

  pagerduty_summary_template = "{{`{{.Check.Name}}`}}/{{`{{.Entity.Name}}`}}"
  remediation_summary=jsondecode(
    tolist(
      {
      "description": "Perform this action once after Nginx has been down for 60 seconds.",
      "request": "nginx-fix-sop",
      "occurrences": [ 6 ],
      "severities": [ 1,2 ]
    },
    {
      "description": "Perform this action once after Nginx has been down for 120 seconds.",
      "request": "nginx-Escalate-Alert",
      "occurrences": [ 12 ],
      "severities": [ 1,2 ]
    }
  ))
}


resource "sensu_check" "ExecuteSop"{
  namespace = "default"
  name = "nginx-fix-sop"
  publish = false
  command = "export container_id_nginx=$(sudo docker ps | grep nginx | awk  {'print $1'}) && echo $container_id_nginx && sudo docker stop $container_id_nginx"
  subscriptions = ["nginx"]
}

resource "sensu_check" "EscalateAlert"{
  namespace = "default"
  name = "nginx-Escalate-Alert"
  publish = false
  command        = "check_http -u / -H 127.0.0.1 -p 80"
  runtime_assets = ["monitoring-plugins"]
  subscriptions  = ["nginx"]
  annotations = {
    "fatigue_check/occurrences" = "1",
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

resource "sensu_check" "billing-availability" {
  namespace   = "default"
  command        = "check_http -u / -H 127.0.0.1 -p 80"
  name           = "nginx-availability"
  subscriptions  = ["nginx"]
  runtime_assets = ["monitoring-plugins"]
  publish        = true
  interval       = 10
  annotations = {
    "io.sensu.remediation.config.actions" : local.remediation_summary
    "fatigue_check/occurrences" = "2",
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
  handlers = [sensu_handler.pagerdutyWarningHandler.name,sensu_handler.SensuRemediationHandler.name]
}