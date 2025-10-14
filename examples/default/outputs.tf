output "id" {
  description = "Unique ID of the snapshot"
  value       = module.hcloud_snapshot.id
}

output "server_id" {
  description = "Server the snapshot was created from"
  value       = module.hcloud_snapshot.server_id
}

output "description" {
  description = "Description of the snapshot"
  value       = module.hcloud_snapshot.description
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = module.hcloud_snapshot.labels
}
