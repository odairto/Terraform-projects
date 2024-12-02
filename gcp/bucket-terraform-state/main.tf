provider "google" {
  project = var.project_id
  region  = var.region
}


resource "google_storage_bucket" "terraform_state" {
  name     = var.bucket_name
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

output "bucket_name" {
    value       = google_storage_bucket.terraform_state.name
}
