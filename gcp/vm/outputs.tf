output "instance_ip" {
  description = "O endereço IP externo da instância da VM"
  value       = google_compute_instance.default.network_interface[0].access_config[0].nat_ip
}

output "instance_name" {
  description = "O nome da instância da VM"
  value       = google_compute_instance.default.name
}

output "instance_zone" {
  description = "A zona da instância da VM"
  value       = google_compute_instance.default.zone
}
