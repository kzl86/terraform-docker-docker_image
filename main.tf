resource "docker_image" "this" {
  name = var.name

  dynamic "build" {
    for_each = var.build != null ? var.build : []
    content {
      context = mounts.value.context

      dynamic "auth_config" {
        for_each = build.value.auth_config != null ? { for index, value in build.value.auth_config : index => value } : {}
        content {
          host_name      = auth_config.value.host_name
          auth           = auth_config.value.auth
          email          = auth_config.value.email
          identity_token = auth_config.value.identity_token
          password       = auth_config.value.password
          registry_token = auth_config.value.registry_token
          server_address = auth_config.value.server_address
          user_name      = auth_config.value.user_name
        }
      }

      build_arg       = mounts.value.build_arg
      build_args      = mounts.value.build_args
      build_id        = mounts.value.build_id
      cache_from      = mounts.value.cache_from
      cgroup_parent   = mounts.value.cgroup_parent
      cpu_period      = mounts.value.cpu_period
      cpu_quota       = mounts.value.cpu_quota
      cpu_set_cpus    = mounts.value.cpu_set_cpus
      cpu_set_mems    = mounts.value.cpu_set_mems
      cpu_shares      = mounts.value.cpu_shares
      dockerfile      = mounts.value.dockerfile
      extra_hosts     = mounts.value.extra_hosts
      force_remove    = mounts.value.force_remove
      isolation       = mounts.value.isolation
      label           = mounts.value.label
      labels          = mounts.value.labels
      memory          = mounts.value.memory
      memory_swap     = mounts.value.memory_swap
      network_mode    = mounts.value.network_mode
      no_cache        = mounts.value.no_cache
      platform        = mounts.value.platform
      pull_parent     = mounts.value.pull_parent
      remote_context  = mounts.value.remote_context
      remove          = mounts.value.remove
      security_opt    = mounts.value.security_opt
      session_id      = mounts.value.session_id
      shm_size        = mounts.value.shm_size
      squash          = mounts.value.squash
      suppress_output = mounts.value.suppress_output
      tag             = mounts.value.tag
      target          = mounts.value.target

      dynamic "ulimit" {
        for_each = build.value.ulimit != null ? { for index, value in build.value.ulimit : index => value } : {}
        content {
          hard = ulimit.value.hard
          name = ulimit.value.name
          soft = ulimit.value.soft
        }
      }

      version = mounts.value.version
    }
  }

  force_remove  = var.force_remove
  keep_locally  = var.keep_locally
  platform      = var.platform
  pull_triggers = var.pull_triggers
  triggers      = var.triggers

}