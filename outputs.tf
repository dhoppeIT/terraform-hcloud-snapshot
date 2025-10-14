output "id" {
  description = "Unique ID of the snapshot"
  value       = hcloud_snapshot.this.id
}

output "server_id" {
  description = "Server the snapshot was created from"
  value       = hcloud_snapshot.this.server_id
}

output "description" {
  description = "Description of the snapshot"
  value       = hcloud_snapshot.this.description
}

output "labels" {
  description = "User-defined labels (key-value pairs)"
  value       = hcloud_snapshot.this.labels
}
