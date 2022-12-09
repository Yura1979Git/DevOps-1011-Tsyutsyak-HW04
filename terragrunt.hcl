remote_state {
  backend = "s3"
  generate = {
    path      = "backends.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket                  = "terraform-state"
    #encrypt                 = true
    endpoint                = "http://167.172.99.40:9000"
    key                     = "state/${get_env("TF_VAR_GROUP")}.tfstate"
    region                  = "main"
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "minio"

    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    force_path_style            = true
  }
}

generate "provider" {
  path = "providers.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "gitlab" {
  base_url = var.gitlab_url
  token    = var.gitlab_token
}
EOF
}

terraform {
  extra_arguments "common_vars" {
    commands = ["plan", "apply"]

    required_var_files = [
      "./environments/${get_env("TF_VAR_GROUP")}.tfvars"
    ]
  }
}
