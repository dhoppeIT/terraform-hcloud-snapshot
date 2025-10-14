resource "hcloud_snapshot" "this" {
  server_id = var.server_id

  description = var.description
  labels      = var.labels

  lifecycle {
    replace_triggered_by = [terraform_data.replacement]
  }
}

resource "terraform_data" "replacement" {
  input = var.revision
}
