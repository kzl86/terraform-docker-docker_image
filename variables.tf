variable "name" {
    description = "The name of the Docker image, including any tags or SHA256 repo digests."
    type        = string
}

variable "keep_locally" {
    description = "If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation."
    type        = bool
    # What is the default here?
    default     = true
}