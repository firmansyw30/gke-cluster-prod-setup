resource "google_artifact_registry_repository" "my_repo" {
  location      = var.artifact_registry_location
  repository_id = var.artifact_registry_repository_id
  description   = "example docker repository"
  format        = var.artifact_registry_format

  docker_config {
    immutable_tags = var.artifact_registry_immutable_tags
  }
}