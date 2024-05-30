locals {
  project_key = var.project_id
}

provider "google" {
  project               = var.project_id
  user_project_override = true
  billing_project       = var.project_id
}

data "google_billing_account" "account" {
  display_name = var.billing_account
}

resource "google_pubsub_topic" "budget" {
  count = var.budget_name == "" ? 0 : 1
  name  = var.budget_topic

  message_retention_duration = "86600s"
}

resource "google_billing_budget" "budget" {
  count           = var.budget_name == "" ? 0 : 1
  billing_account = data.google_billing_account.account.id
  display_name    = var.budget_name
  amount {
    specified_amount {
      currency_code = "USD"
      units         = var.budget_amount
    }
  }

  all_updates_rule {
    pubsub_topic = google_pubsub_topic.budget[0].id
  }

  threshold_rules {
    threshold_percent = 0.5
  }

  threshold_rules {
    threshold_percent = 0.9
  }

  threshold_rules {
    threshold_percent = 1.0
  }
}

resource "google_project" "project" {
  name            = var.project_name
  project_id      = var.project_id
  billing_account = data.google_billing_account.account.id
  labels          = var.labels
}
