variable "container_name" {
  description = "Name of the Redis container"
  type        = string
  default     = "redis-container"
}

variable "external_port" {
  description = "External port to bind Redis container"
  type        = number
  default     = 6379
}

variable "network" {
  description = "The Docker network to attach the container to"
  type        = string
  default     = "my_network"
}

