variable "flux_version" {
  description = "Version of Flux to install"
  default     = "v0.23.0"
}

variable "flux_namespace" {
  description = "Namespace for Flux installation"
  default     = "flux-system"
}

variable "flux_sync_git_url" {
  description = "Git repository URL for Flux synchronization"
  default     = "git@github.com:wikibal01/enterprise-k8s-platform.git"
}

variable "flux_sync_git_branch" {
  description = "Branch for Flux to sync with"
  default     = "main"
}

variable "flux_sync_interval" {
  description = "Interval for Flux to sync with the Git repository"
  default     = "1m"
}

variable "flux_helm_version" {
  description = "Version of Helm to use for Flux"
  default     = "v2.10.0"
}
