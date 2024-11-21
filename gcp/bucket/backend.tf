terraform {
  backend "gcs" {
    bucket  = "bucket-terraform-state"
    prefix  = "terraform/state"
  }
}
