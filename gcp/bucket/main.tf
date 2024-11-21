provider "google" {
  project = var.project_id
  region  = var.region
}


resource "google_storage_bucket" "bucket" {
  name     = "omf-static-site"
  location = var.region
  force_destroy = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }
}
