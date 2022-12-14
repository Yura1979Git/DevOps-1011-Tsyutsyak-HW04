# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket                      = "terraform-state"
    endpoint                    = "http://167.172.99.40:9000"
    force_path_style            = true
    key                         = "state/dev.tfstate"
    profile                     = "minio"
    region                      = "main"
    shared_credentials_file     = "~/.aws/credentials"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
  }
}
