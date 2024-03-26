output "image_id" {
  description = "The ID of the image (as seen when executing docker inspect on the image). Can be used to reference the image via its ID in other resources."
  value       = docker_image.this.image_id
}