variable "aws_region" {
  description = "AWS region to deploy the EKS cluster"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  default     = "assignment-cluster"
}

variable "node_group_size" {
  description = "The number of nodes in the node group"
  default     = 2
}

variable "node_instance_type" {
  description = "EC2 instance type for nodes"
  default     = "t3.medium"
}

variable "min_node_group_size" {
  description = "The number of mix nodes in the node group"
  default     = 2
}

variable "max_node_group_size" {
  description = "The number of max nodes in the node group"
  default     = 5
}

variable "environment" {
  description = "Working environment"
  default     = "dev"
}
