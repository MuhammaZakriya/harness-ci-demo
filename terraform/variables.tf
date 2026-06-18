variable "aws_region" {
  default = "us-east-1"
}

variable "image_tag" {
  description = "Docker image tag from pipeline"
  type        = string
}

variable "app_name" {
  default = "harness-ci-demo"
}

variable "dockerhub_username" {
  default = "zakria123"
}