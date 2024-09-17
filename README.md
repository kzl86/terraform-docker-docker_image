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
| <a name="input_build"></a> [build](#input\_build) | Configuration to build an image. Please see docker build command reference too https://docs.docker.com/engine/reference/commandline/build/#options.<br>[{<br>  context = Value to specify the build context. Currently, only a PATH context is supported. You can use the helper function '$\{path.cwd}/context-dir'. Please see https://docs.docker.com/build/building/context/ for more information about build contexts. (required)<br>  auth\_config = [{ # The configuration for the authentication (optional, maximum 1)<br>    host\_name      = hostname of the registry (required)<br>    auth           = the auth token (optional)<br>    email          = the user emal (optional)<br>    identity\_token = the identity token (optional)<br>    password       = the registry password (optional)<br>    registry\_token = the registry token (optional)<br>    server\_address = the server address (optional)<br>    user\_name      = the registry user name (optional)<br>  }]<br>  build\_arg       = Set build-time variables (optional)<br>  build\_args      = Pairs for build-time variables in the form TODO (optional)<br>  build\_id        = BuildID is an optional identifier that can be passed together with the build request. The same identifier can be used to gracefully cancel the build with the cancel request. (optional)<br>  cache\_from      = Images to consider as cache sources (optional)<br>  cgroup\_parent   = Optional parent cgroup for the container (optional)<br>  cpu\_period      = The length of a CPU period in microseconds (optional)<br>  cpu\_quota       = Microseconds of CPU time that the container can get in a CPU period (optional)<br>  cpu\_set\_cpus    = CPUs in which to allow execution (e.g., 0-3, 0, 1) (optional)<br>  cpu\_set\_mems    = MEMs in which to allow execution (0-3, 0, 1) (optional)<br>  cpu\_shares      = CPU shares (relative weight) (optional)<br>  dockerfile      = Name of the Dockerfile. Defaults to Dockerfile. (optional)<br>  extra\_hosts     = A list of hostnames/IP mappings to add to the container’s /etc/hosts file. Specified in the form ["hostname:IP"] (optional)<br>  force\_remove    = Always remove intermediate containers (optional)<br>  isolation       = Isolation represents the isolation technology of a container. The supported values are (optional)<br>  label           = Set metadata for an image (optional)<br>  labels          = User-defined key/value metadata (optional)<br>  memory          = Set memory limit for build (optional)<br>  memory\_swap     = Total memory (memory + swap), -1 to enable unlimited swap (optional)<br>  network\_mode    = Set the networking mode for the RUN instructions during build (optional)<br>  no\_cache        = Do not use the cache when building the image (optional)<br>  platform        = Set platform if server is multi-platform capable (optional)<br>  pull\_parent     = Attempt to pull the image even if an older image exists locally (optional)<br>  remote\_context  = A Git repository URI or HTTP/HTTPS context URI (optional)<br>  remove          = Remove intermediate containers after a successful build. Defaults to true. (optional)<br>  security\_opt    = The security options (optional)<br>  session\_id      = Set an ID for the build session (optional)<br>  shm\_size        = Size of /dev/shm in bytes. The size must be greater than 0 (optional)<br>  squash          = If true the new layers are squashed into a new image with a single new layer (optional)<br>  suppress\_output = Suppress the build output and print image ID on success (optional)<br>  tag             = Name and optionally a tag in the 'name:tag' format (optional)<br>  target          = Set the target build stage to build (optional)<br>  ulimit [{ # Configuration for ulimits<br>    hard = soft limit (optional)<br>    name = type of ulimit, e.g. nofile (optional)<br>    soft = hard limit (optional)<br>  version = Version of the underlying builder to use (optional)<br>}] | <pre>list(object({<br>    context = string<br>    auth_config = optional(list(object({<br>      host_name      = optional(string, null)<br>      auth           = optional(string, null)<br>      email          = optional(string, null)<br>      identity_token = optional(string, null)<br>      password       = optional(string, null)<br>      registry_token = optional(string, null)<br>      server_address = optional(string, null)<br>      user_name      = optional(string, null)<br>    })))<br>    build_arg       = optional(map(string), null)<br>    build_args      = optional(map(string), null)<br>    build_id        = optional(string, null)<br>    cache_from      = optional(list(string), null)<br>    cgroup_parent   = optional(string, null)<br>    cpu_period      = optional(number, null)<br>    cpu_quota       = optional(number, null)<br>    cpu_set_cpus    = optional(string, null)<br>    cpu_set_mems    = optional(string, null)<br>    cpu_shares      = optional(number, null)<br>    dockerfile      = optional(string, null)<br>    extra_hosts     = optional(list(string), null)<br>    force_remove    = optional(bool, null)<br>    isolation       = optional(string, null)<br>    label           = optional(map(string), null)<br>    labels          = optional(map(string), null)<br>    memory          = optional(number, null)<br>    memory_swap     = optional(number, null)<br>    network_mode    = optional(string, null)<br>    no_cache        = optional(bool, null)<br>    platform        = optional(string, null)<br>    pull_parent     = optional(bool, null)<br>    remote_context  = optional(string, null)<br>    remove          = optional(bool, null)<br>    security_opt    = optional(list(string), null)<br>    session_id      = optional(string, null)<br>    shm_size        = optional(number, null)<br>    squash          = optional(bool, null)<br>    suppress_output = optional(bool, null)<br>    tag             = optional(list(string), null)<br>    target          = optional(string, null)<br>    ulimit = optional(list(object({<br>      hard = optional(number, null)<br>      name = optional(string, null)<br>      soft = optional(number, null)<br>    })))<br>    version = optional(string, null)<br>  }))</pre> | `null` | no |
| <a name="input_force_remove"></a> [force\_remove](#input\_force\_remove) | If true, then the image is removed forcibly when the resource is destroyed. | `bool` | `false` | no |
| <a name="input_keep_locally"></a> [keep\_locally](#input\_keep\_locally) | If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Docker image, including any tags or SHA256 repo digests. | `string` | n/a | yes |
| <a name="input_platform"></a> [platform](#input\_platform) | The platform to use when pulling the image. Defaults to the platform of the current machine. | `string` | `null` | no |
| <a name="input_pull_triggers"></a> [pull\_triggers](#input\_pull\_triggers) | List of values which cause an image pull when changed. This is used to store the image digest from the registry when using the docker\_registry\_image. | `list(string)` | `null` | no |
| <a name="input_triggers"></a> [triggers](#input\_triggers) | A map of arbitrary strings that, when changed, will force the docker\_image resource to be replaced. This can be used to rebuild an image when contents of source code folders change | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Unique identifier for this resource. This is not the image ID, but the ID of the resource in the Terraform state. This is used to identify the resource in the Terraform state. To reference the correct image ID, use the image\_id attribute. |
| <a name="output_image_id"></a> [image\_id](#output\_image\_id) | The ID of the image (as seen when executing docker inspect on the image). Can be used to reference the image via its ID in other resources. |
| <a name="output_repo_digest"></a> [repo\_digest](#output\_repo\_digest) | The image sha256 digest in the form of repo[:tag]@sha256:<hash>. |
<!-- END_TF_DOCS -->