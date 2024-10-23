resource "sensu_check" "billing-availability" {
  namespace   = "default"
  command        = "check_http -u /health -H 127.0.0.1 -p 80"
  name           = "nginx-availability"
  subscriptions  = ["nginx"]
  publish        = true
  interval       = 20
}