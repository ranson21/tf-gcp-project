output "project_id" {
  value = google_project.project.id
}

output "project_number" {
  value = google_project.project.number
}

output "project" {
  value = local.project_key
}

output "budget_topic" {
  value = google_pubsub_topic.budget[0].id
}
