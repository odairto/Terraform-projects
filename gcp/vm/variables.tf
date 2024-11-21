variable "project_id" {
  description = "Project ID"
  type        = string
  default     = "default-project-442314"
}

variable "region" {
  description = "Region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone"
  type        = string
  default     = "us-central1-a"
}

variable "instance_name" {
  description = "omf-api"
  type        = string
  default	  = "omf-api"
}

variable "machine_type" {
  description = "VM type"
  type        = string
  default     = "e2-micro"
}

