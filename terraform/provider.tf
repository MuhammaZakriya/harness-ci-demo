terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "harness-terraform-state-zakria123"
    key            = "harness-ci-demo/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }

  required_version = ">= 1.0"
}

provider "aws" {
  region = var.aws_region
}