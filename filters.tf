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

resource "sensu_filter" "one_min_Delay" {
  name           = "one_min_delay_fatigue_check"
  namespace      = "default"
  action         = "allow"
  expressions    = ["fatigue_check(event, 6)"]
  runtime_assets = ["sensu-go-fatigue-check-filter"]
}

resource "sensu_filter" "two_min_Delay" {
  name           = "two_min_delay_fatigue_check"
  namespace      = "default"
  action         = "allow"
  expressions    = ["fatigue_check(event, 12)"]
  runtime_assets = ["sensu-go-fatigue-check-filter"]
}

resource "sensu_filter" "five_min_Delay" {
  name           = "five_min_delay_fatigue_check"
  namespace      = "default"
  action         = "allow"
  expressions    = ["fatigue_check(event, 30)"]
  runtime_assets = ["sensu-go-fatigue-check-filter"]
}