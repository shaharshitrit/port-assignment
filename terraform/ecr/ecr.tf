provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "backend_app" {
  name                 = "backend-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Environment = var.environment
    Project     = "Backend-App"
  }
}

output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = aws_ecr_repository.backend_app.repository_url
}
