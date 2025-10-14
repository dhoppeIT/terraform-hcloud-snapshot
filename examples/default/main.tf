module "hcloud_snapshot" {
  source = "../../"

  server_id = data.hcloud_server.this.id

  description = "Snapshot managed by Terraform"
  revision    = "1"
}
