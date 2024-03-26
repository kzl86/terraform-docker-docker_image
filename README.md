<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.7.5 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 3.0.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 3.0.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_image.this](https://registry.terraform.io/providers/kreuzwerker/docker/3.0.2/docs/resources/image) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_keep_locally"></a> [keep\_locally](#input\_keep\_locally) | If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Docker image, including any tags or SHA256 repo digests. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_image_id"></a> [image\_id](#output\_image\_id) | The ID of the image (as seen when executing docker inspect on the image). Can be used to reference the image via its ID in other resources. |
<!-- END_TF_DOCS -->