variable "cluster_name" {
  description = "The name of the EKS cluster"
  default     = "enterprise-eks-cluster"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  default     = "1.25"
}

variable "node_instance_type" {
  description = "EC2 instance type for EKS worker nodes"
  default     = "t3.medium"
}

variable "desired_capacity" {
  description = "Desired number of worker nodes"
  default     = 3
}

variable "max_capacity" {
  description = "Maximum number of worker nodes"
  default     = 6
}

variable "min_capacity" {
  description = "Minimum number of worker nodes"
  default     = 1
}

variable "ssh_key_name" {
  description = "SSH key name for accessing worker nodes"
  default     = "key-name"
}
