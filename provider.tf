terraform {

  backend "remote" {
    organization = "programeh"
    workspaces {
      name = "sensu-terraform"
    }
  }

  required_providers {
    sensu = {
      source  = "shubhambjadhavar/sensu"
      version = "1.0.3"
    }
  }
}

provider "sensu" {
  api_url   = "http://43.203.207.128:8080"
  username  = "pavan"
  password  = "password"
  namespace = "default"
}