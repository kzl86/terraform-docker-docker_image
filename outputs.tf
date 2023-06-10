output "latest" {
    description = "The ID of the image in the form of sha256:<hash> image digest. Do not confuse it with the default latest tag."
    value = docker_image.this.latest
}