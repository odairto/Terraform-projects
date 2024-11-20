variable "docker_image_name" {
  description = "Nome da imagem Docker"
  type        = string
  default     = "nginx:latest"
}

variable "container_name" {
  description = "Nome do container Docker"
  type        = string
  default     = "tutorial"
}

variable "internal_port" {
  description = "Porta interna do container Docker"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "Porta externa do host Docker"
  type        = number
  default     = 8000
}
