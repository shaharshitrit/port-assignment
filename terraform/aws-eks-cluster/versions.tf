terraform {
  required_version = ">= 1.9.8"  # Specify your required version here

  # Optional: You can also specify required providers and their versions
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
