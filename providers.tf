# Configure the GitLab Provider
provider "gitlab" {
  base_url = var.gitlab_url
  token    = var.gitlab_token
}

# Config of mino s3 provider
provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "minio"
}