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

variable "org_id" {
  description = "Unique ID for the project organization"
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

variable "budget_name" {
  type        = string
  description = "Name of the budget"
  default     = ""
}

variable "budget_amount" {
  type        = string
  description = "Amount of the budget"
  default     = ""
}

variable "budget_topic" {
  type        = string
  description = "Topic to publish budget related messages"
  default     = ""
}
