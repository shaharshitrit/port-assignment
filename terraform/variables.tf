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

variable "vpc_cidr" {
  description = "VPC cidr ip"
  type        = string
}

variable "vpc_private_subnets" {
  description = "VPC private subnet ips"
  type        = any
}

variable "vpc_public_subnets" {
  description = "VPC public subnet ips"
  type        = any
}

variable "eks_version" {
  description = "eks k8s version"
  type        = string
}