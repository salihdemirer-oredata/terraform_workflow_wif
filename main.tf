resource "google_artifact_registry_repository" "test_repo" {
  location = "europe-west1"
  repository_id = "test-repository-01"
  format = "DOCKER"
}