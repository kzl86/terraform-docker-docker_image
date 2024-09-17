variable "name" {
  description = "The name of the Docker image, including any tags or SHA256 repo digests."
  type        = string
}

variable "build" {
  description = <<EOF
Configuration to build an image. Please see docker build command reference too https://docs.docker.com/engine/reference/commandline/build/#options.
[{
  context = Value to specify the build context. Currently, only a PATH context is supported. You can use the helper function '$\{path.cwd}/context-dir'. Please see https://docs.docker.com/build/building/context/ for more information about build contexts. (required)
  auth_config = [{ # The configuration for the authentication (optional, maximum 1)
    host_name      = hostname of the registry (required)
    auth           = the auth token (optional)
    email          = the user emal (optional)
    identity_token = the identity token (optional)
    password       = the registry password (optional)
    registry_token = the registry token (optional)
    server_address = the server address (optional)
    user_name      = the registry user name (optional)
  }]
  build_arg       = Set build-time variables (optional)
  build_args      = Pairs for build-time variables in the form TODO (optional)
  build_id        = BuildID is an optional identifier that can be passed together with the build request. The same identifier can be used to gracefully cancel the build with the cancel request. (optional)
  cache_from      = Images to consider as cache sources (optional)
  cgroup_parent   = Optional parent cgroup for the container (optional)
  cpu_period      = The length of a CPU period in microseconds (optional)
  cpu_quota       = Microseconds of CPU time that the container can get in a CPU period (optional)
  cpu_set_cpus    = CPUs in which to allow execution (e.g., 0-3, 0, 1) (optional)
  cpu_set_mems    = MEMs in which to allow execution (0-3, 0, 1) (optional)
  cpu_shares      = CPU shares (relative weight) (optional)
  dockerfile      = Name of the Dockerfile. Defaults to Dockerfile. (optional)
  extra_hosts     = A list of hostnames/IP mappings to add to the container’s /etc/hosts file. Specified in the form ["hostname:IP"] (optional)
  force_remove    = Always remove intermediate containers (optional)
  isolation       = Isolation represents the isolation technology of a container. The supported values are (optional)
  label           = Set metadata for an image (optional)
  labels          = User-defined key/value metadata (optional)
  memory          = Set memory limit for build (optional)
  memory_swap     = Total memory (memory + swap), -1 to enable unlimited swap (optional)
  network_mode    = Set the networking mode for the RUN instructions during build (optional)
  no_cache        = Do not use the cache when building the image (optional)
  platform        = Set platform if server is multi-platform capable (optional)
  pull_parent     = Attempt to pull the image even if an older image exists locally (optional)
  remote_context  = A Git repository URI or HTTP/HTTPS context URI (optional)
  remove          = Remove intermediate containers after a successful build. Defaults to true. (optional)
  security_opt    = The security options (optional)
  session_id      = Set an ID for the build session (optional)
  shm_size        = Size of /dev/shm in bytes. The size must be greater than 0 (optional)
  squash          = If true the new layers are squashed into a new image with a single new layer (optional)
  suppress_output = Suppress the build output and print image ID on success (optional)
  tag             = Name and optionally a tag in the 'name:tag' format (optional)
  target          = Set the target build stage to build (optional)
  ulimit [{ # Configuration for ulimits
    hard = soft limit (optional)
    name = type of ulimit, e.g. nofile (optional)
    soft = hard limit (optional)
  version = Version of the underlying builder to use (optional)
}]
EOF

  type = list(object({
    context = string
    auth_config = optional(list(object({
      host_name      = optional(string, null)
      auth           = optional(string, null)
      email          = optional(string, null)
      identity_token = optional(string, null)
      password       = optional(string, null)
      registry_token = optional(string, null)
      server_address = optional(string, null)
      user_name      = optional(string, null)
    })))
    build_arg       = optional(map(string), null)
    build_args      = optional(map(string), null)
    build_id        = optional(string, null)
    cache_from      = optional(list(string), null)
    cgroup_parent   = optional(string, null)
    cpu_period      = optional(number, null)
    cpu_quota       = optional(number, null)
    cpu_set_cpus    = optional(string, null)
    cpu_set_mems    = optional(string, null)
    cpu_shares      = optional(number, null)
    dockerfile      = optional(string, null)
    extra_hosts     = optional(list(string), null)
    force_remove    = optional(bool, null)
    isolation       = optional(string, null)
    label           = optional(map(string), null)
    labels          = optional(map(string), null)
    memory          = optional(number, null)
    memory_swap     = optional(number, null)
    network_mode    = optional(string, null)
    no_cache        = optional(bool, null)
    platform        = optional(string, null)
    pull_parent     = optional(bool, null)
    remote_context  = optional(string, null)
    remove          = optional(bool, null)
    security_opt    = optional(list(string), null)
    session_id      = optional(string, null)
    shm_size        = optional(number, null)
    squash          = optional(bool, null)
    suppress_output = optional(bool, null)
    tag             = optional(list(string), null)
    target          = optional(string, null)
    ulimit = optional(list(object({
      hard = optional(number, null)
      name = optional(string, null)
      soft = optional(number, null)
    })))
    version = optional(string, null)
  }))
  default = null
}

variable "force_remove" {
  description = "If true, then the image is removed forcibly when the resource is destroyed."
  type        = bool
  default     = false
}

variable "keep_locally" {
  description = "If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation."
  type        = bool
  default     = true
}

variable "platform" {
  description = "The platform to use when pulling the image. Defaults to the platform of the current machine."
  type        = string
  default     = null
}

variable "pull_triggers" {
  description = "List of values which cause an image pull when changed. This is used to store the image digest from the registry when using the docker_registry_image."
  type        = list(string)
  default     = null
}

variable "triggers" {
  description = "A map of arbitrary strings that, when changed, will force the docker_image resource to be replaced. This can be used to rebuild an image when contents of source code folders change"
  type        = map(string)
  default     = null
}