# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v3.0.0] - 2024-09-17

### Added

- variable "build"
- variable "force_remove"
- variable "keep_locally"
- variable "platform"
- variable "pull_triggers"
- variable "triggers"
- output "id"
- output "repo_digest"

## [v2.0.0] - 2024-03-26

### Changed

- Terraform version update to v1.7.5
- Docker provider update to v3.0.2
- Rename output "latest" to "image_id"

## [v1.0.0] - 2023-06-10

### Added

- Initial base module with basic functionality
- resource "docker_image" "this"
- variable "name"
- variable "keep_locally"
- output "latest"