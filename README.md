<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.2.6 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 2.19.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 2.19.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_image.this](https://registry.terraform.io/providers/kreuzwerker/docker/2.19.0/docs/resources/image) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keep_locally"></a> [keep\_locally](#input\_keep\_locally) | If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Docker image, including any tags or SHA256 repo digests. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_latest"></a> [latest](#output\_latest) | The ID of the image in the form of sha256:<hash> image digest. Do not confuse it with the default latest tag. |
<!-- END_TF_DOCS -->