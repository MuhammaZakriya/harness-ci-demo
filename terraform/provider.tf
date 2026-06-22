terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "harness-terraform-state-zakria123"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
    # key is passed via -backend-config in pipeline
  }

  required_version = ">= 1.0"
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = var.environment
      Application = var.app_name
      ManagedBy   = "terraform"
    }
  }
}