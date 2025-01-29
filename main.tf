provider "aws"{
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

resource "aws_s3_bucket" "ci_cd_bucket" {
    bucket = var.ci_cd_project
    acl = "private"

    tags = {
    Name = var.ci_cd_project
    Environmen = "Dev"
}
}
