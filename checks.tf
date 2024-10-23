resource "sensu_check" "billing-availability" {
  namespace   = "default"
  command        = "check_http -u / -H 127.0.0.1 -p 80"
  name           = "nginx-availability"
  subscriptions  = ["nginx"]
  runtime_assets = ["monitoring-plugins"]
  publish        = true
  interval       = 3
}