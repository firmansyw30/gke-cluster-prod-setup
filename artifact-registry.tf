resource "google_artifact_registry_repository" "my-repo" {
  location      = "asia-southeast2"
  repository_id = "my-repository"
  description   = "example docker repository"
  format        = "DOCKER"

  docker_config {
    immutable_tags = true
  }
}