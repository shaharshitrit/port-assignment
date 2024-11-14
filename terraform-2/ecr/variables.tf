variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "eu-north-1"  # Replace with your preferred AWS region
}

variable "environment" {
  description = "Environment tag for resources"
  type        = string
  default     = "dev"
}
