terraform {
  backend "gcs" {
    bucket  = "terraform-state-oda"
    prefix  = "terraform/buckets/static-site/state"
  }
}
