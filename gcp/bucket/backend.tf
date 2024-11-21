terraform {
  backend "gcs" {
    bucket  = "terraform-state-oda"
    prefix  = "terraform/state"
  }
}
