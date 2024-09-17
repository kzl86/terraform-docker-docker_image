## Example description

This is an example which deploys an nginx container with static content via the terraform module. As a prerequisite docker should be installed.

## Usage

```bash
# Clone the repository
git clone --branch v3.0.0 https://github.com/kzl86/terraform-docker-docker_image && mv terraform-docker-docker_image/examples/nginx ./ && cd nginx

# Get the terraform binary
wget https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_linux_amd64.zip

# Decompress in the current directory
unzip terraform_1.7.5_linux_amd64.zip

# Deploy the example nginx module to host
export TF_VAR_nginx_mount_source=$(pwd) && ./terraform init && ./terraform apply --auto-approve

# Validate the nginx webserver
curl localhost:8080
```

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nginx_container"></a> [nginx\_container](#module\_nginx\_container) | kzl86/docker_container/docker | v3.0.1 |
| <a name="module_nginx_image"></a> [nginx\_image](#module\_nginx\_image) | kzl86/docker_image/docker | v3.0.0 |

## Resources

| Name | Type |
|------|------|
| [docker_registry_image.nginx](https://registry.terraform.io/providers/kreuzwerker/docker/3.0.2/docs/data-sources/registry_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nginx_mount_source"></a> [nginx\_mount\_source](#input\_nginx\_mount\_source) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->