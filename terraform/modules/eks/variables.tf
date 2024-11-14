variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version of the cluster"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the cluster"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the cluster"
  type        = list(string)
}

variable "node_group_size" {
  description = "Desired number of nodes"
  type        = number
}

variable "node_instance_type" {
  description = "Instance type for nodes"
  type        = string
}

variable "min_node_group_size" {
  description = "Minimum number of nodes"
  type        = number
}

variable "max_node_group_size" {
  description = "Maximum number of nodes"
  type        = number
}
