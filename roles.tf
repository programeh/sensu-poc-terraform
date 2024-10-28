resource "sensu_role" "role_1" {
  name = "my_role"
  namespace = "default"
  rule {
    resources = ["checks"]
    verbs     = ["create","update"]
  }
}

resource "sensu_role_binding" "remediation-handler_binder" {
  binding_type = "role"
  name         = "remediation-handler"
  role         = "remediation-handler"
  users = ["remediation-handler"]
}

resource "sensu_user" "remediation-handler_user" {
  name     = "remediation-handler"
  password = "REPLACEME"
}