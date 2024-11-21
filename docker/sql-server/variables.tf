variable "sqlserver_image" {
    description     = "Definition of db image"
    type            = string
    default         = "mcr.microsoft.com/mssql/server:2022-latest"
}

variable "container_name" {
    description     = "Name of db image"
    type            = string
    default         = "sql-server-instance"
}

variable "internal_db_port" {
    description     = "Port of db container"
    type            = number
    default         = 1433
}

variable "external_db_port" {
    description     = "Port of db container"
    type            = number
    default         = 1434
}

variable "default_password" {
    description     = "Password of SA user"
    type            = string
    default         = "Kartman@333"
}

variable "network" {
    description     = "Network to add the instance"
    type            = string
    default         = "my_network"
}