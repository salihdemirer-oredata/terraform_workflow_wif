resource "google_artifact_registry_repository" "test_repo" {
  location = "europe-west1"
  repository_id = "test_repository_02"
  format = "DOCKER"
}