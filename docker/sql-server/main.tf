terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "sql_server" {
  name = var.sqlserver_image
}

resource "docker_container" "sql_server" {
  image = var.sqlserver_image
  name  = var.container_name
  ports {
    internal = var.internal_db_port
    external = var.external_db_port
  }

  env = [
    "MSSQL_SA_PASSWORD=${var.default_password}",
    "ACCEPT_EULA=Y"
  ]

  networks_advanced { 
    name = var.network
    }
}


