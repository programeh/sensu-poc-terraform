resource "sensu_filter" "dependencies" {
  namespace      = "default"
  name           = "dependencies"
  action         = "allow"
  expressions    = ["coreDependencies(event)"]
  runtime_assets = ["sensu-dependencies-filter"]
}

resource "sensu_filter" "fatigue_check" {
  name           = "fatigue_check"
  namespace      = "default"
  action         = "allow"
  expressions    = ["fatigue_check(event)"]
  runtime_assets = ["sensu-go-fatigue-check-filter"]
}