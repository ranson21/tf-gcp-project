locals {
  project_key = var.project_id
}

data "google_billing_account" "account" {
  display_name = var.billing_account
}

resource "google_project" "project" {
  name            = var.project_name
  project_id      = var.project_id
  billing_account = data.google_billing_account.account.id
  labels          = var.labels
}
