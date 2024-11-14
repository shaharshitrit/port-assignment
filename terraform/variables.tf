variable "aws_region" {
  description = "AWS region to deploy the EKS cluster"
  type        = string
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "node_group_size" {
  description = "The number of nodes in the node group"
  type        = number
}

variable "node_instance_type" {
  description = "EC2 instance type for nodes"
  type        = string
}

variable "min_node_group_size" {
  description = "Minimum number of nodes in the node group"
  type        = number
}

variable "max_node_group_size" {
  description = "Maximum number of nodes in the node group"
  type        = number
}

variable "environment" {
  description = "Environment for resources"
  type        = string
}

