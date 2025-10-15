# terraform-hcloud-snapshot

Terraform module to manage the following Hetzner Cloud resources:

* hcloud_snapshot
* terraform_data

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "hcloud_server" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-hcloud-server/local"
  version = "1.1.0"

  name        = "example-server"
  image       = "debian-13"
  server_type = "cx22"

  location = "nbg1"
}

module "hcloud_snapshot" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-hcloud-snapshot/local"
  version = "1.1.0"

  server_id = module.hcloud_server.id

  description = "Snapshot managed by Terraform"
  revision    = "1"
}

```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | ~> 1.0 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_snapshot.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/snapshot) | resource |
| [terraform_data.replacement](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/resources/data) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the snapshot | `string` | `null` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | User-defined labels (key-value pairs) should be created with | `map(string)` | `{}` | no |
| <a name="input_revision"></a> [revision](#input\_revision) | Revision of the snapshot | `string` | `null` | no |
| <a name="input_server_id"></a> [server\_id](#input\_server\_id) | Server to the snapshot should be created from | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_description"></a> [description](#output\_description) | Description of the snapshot |
| <a name="output_id"></a> [id](#output\_id) | Unique ID of the snapshot |
| <a name="output_labels"></a> [labels](#output\_labels) | User-defined labels (key-value pairs) |
| <a name="output_server_id"></a> [server\_id](#output\_server\_id) | Server the snapshot was created from |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
