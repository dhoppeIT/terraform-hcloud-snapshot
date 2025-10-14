module "hcloud_snapshot" {
  source = "../../"

  server_id = data.hcloud_server.this.id
}
