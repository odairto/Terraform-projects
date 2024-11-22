terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = var.docker_host
}

module "redis" {
  source         = "../modules/redis"
  container_name = "${terraform.workspace}-redis"
  external_port  = terraform.workspace == "prod" ? var.prod_port : var.dev_port
  network        = "${terraform.workspace}_network"
}
