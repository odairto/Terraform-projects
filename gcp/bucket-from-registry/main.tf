module "cloud-storage_example_simple_bucket" {
  source  = "terraform-google-modules/cloud-storage/google//examples/simple_bucket"
  version = "8.0.1"
  project_id = var.project_id
}