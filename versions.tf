# Terraform version and GitlabProvider version
terraform {
  required_version = ">= 1.2.0"
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.20.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}


