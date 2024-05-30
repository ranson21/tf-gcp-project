output "project_id" {
  value = google_project.project.id
}

output "project" {
  value = local.project_key
}
