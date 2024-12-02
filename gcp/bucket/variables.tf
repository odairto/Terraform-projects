variable "project_id" {
  description = "Project Id on GCP"
  type        = string
  default     = "default-project-442314"
}

variable "region" {
  description = "Region"
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "Bucket Name"
  type        = string
  default     = "omf-static-site"
}
