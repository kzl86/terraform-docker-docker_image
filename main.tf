resource "docker_image" "this" {
  name         = var.name
  keep_locally = var.keep_locally
}