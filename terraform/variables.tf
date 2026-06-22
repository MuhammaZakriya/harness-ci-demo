variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "image_tag" {
  description = "Docker image tag from pipeline"
  type        = string
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "harness-ci-demo"
}

variable "dockerhub_username" {
  description = "Docker Hub username"
  type        = string
  default     = "zakria123"
}