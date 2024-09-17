output "id" {
  description = "Unique identifier for this resource. This is not the image ID, but the ID of the resource in the Terraform state. This is used to identify the resource in the Terraform state. To reference the correct image ID, use the image_id attribute."
  value       = docker_image.this.id
}

output "image_id" {
  description = "The ID of the image (as seen when executing docker inspect on the image). Can be used to reference the image via its ID in other resources."
  value       = docker_image.this.image_id
}

output "repo_digest" {
  description = "The image sha256 digest in the form of repo[:tag]@sha256:<hash>."
  value       = docker_image.this.repo_digest
}