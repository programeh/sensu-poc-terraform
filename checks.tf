resource "sensu_check" "billing-availability" {
  namespace   = "default"
  command        = "check_http -u / -H 127.0.0.1 -p 80"
  name           = "nginx-availability"
  subscriptions  = ["nginx"]
  runtime_assets = ["monitoring-plugins"]
  publish        = true
  interval       = 20
  handlers = [sensu_handler.pagerdutyWarningHandler.name,sensu_handler.SOPExecuteHandler.name,sensu_handler.pagerdutyEscalationHandler.name]
}