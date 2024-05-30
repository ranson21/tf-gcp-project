variable "billing_account" {
  description = "Billing account display name"
  type        = string
}

variable "project_name" {
  description = "Label for the project"
  type        = string
}

variable "project_id" {
  description = "Unique ID for the project"
  type        = string
}

variable "region" {
  description = "Geographic region for hosting the project"
  type        = string
}

variable "labels" {
  description = "GCP Resource Labels"
  type        = map(any)
  default     = {}
}
