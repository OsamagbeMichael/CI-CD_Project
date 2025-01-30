provider "aws" {
  region = "ca-central-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" # Use a compatible version
    }
  }
}

resource "aws_s3_bucket" "ci-cd-bucket" {
  bucket = var.ci-cd-project
  acl    = "private"

  tags = {
    Name        = var.ci-cd-project
    Environment = "Dev"
  }
}
