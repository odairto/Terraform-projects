variable "environment" {
  description = "The environment for this deployment (e.g., dev, prod)"
  type        = string
  default     = "dev"
}

variable "docker_host" {
  description = "Docker host"
  type        = string
  default     = "tcp://localhost:2375"
}

variable "container_name" {
  description = "Name of the Redis container"
  type        = string
  default     = "my-redis"
}

variable "dev_port" {
  description = "External port for the Redis container in the development environment"
  type        = number
  default     = 6379
}

variable "prod_port" {
  description = "External port for the Redis container in the production environment"
  type        = number
  default     = 6380
}


variable "network" {
  description = "The Docker network to attach the container to"
  type        = string
  default     = "my_network"
}
