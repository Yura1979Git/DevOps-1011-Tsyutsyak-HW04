module "gitlab_group" {
  source                    = "./modules/gitlab"
  gitlab_token              = var.gitlab_token
  gitlab_groups_name        = var.gitlab_groups_name
  gitlab_project_name       = var.gitlab_project_name
  gitlab_group_token_name   = var.gitlab_group_token_name
  expires_token_date        = var.expires_token_date
  access_level              = var.access_level
  token_scopes              = var.token_scopes
  gitlab_deploy_token_name  = var.gitlab_deploy_token_name
  expires_deploy_token_date = var.expires_deploy_token_date
  deploy_token_scopes       = var.deploy_token_scopes
}