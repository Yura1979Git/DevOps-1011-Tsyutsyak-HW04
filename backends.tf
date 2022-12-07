terraform {
  backend "s3" {
    bucket                  = "terraform-state"
    endpoint                = "http://167.172.99.40:9000"
    key                     = "state/terraform.tfstate"
    region                  = "main"
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "minio"

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = true
  }
}