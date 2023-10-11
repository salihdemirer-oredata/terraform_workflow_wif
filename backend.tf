terraform {
  backend "gcs" {
    bucket = "salih-utilities"
    prefix = "terraform/state/terraform-workflow"
  }
}