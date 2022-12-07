# Add a group
resource "gitlab_group" "gitlab_wa_group" {
  name             = "wa-${var.gitlab_group_name}"
  path             = "wa-${var.gitlab_group_name}"
  description      = "An wa-${var.gitlab_group_name}} group"
  visibility_level = "internal"
}

# Add GitLab Token
resource "gitlab_group_access_token" "gitlab_wa_group_at" {
  group        = gitlab_group.gitlab_wa_group.name
  name         = var.gitlab_group_token_name
  expires_at   = var.expires_token_date
  access_level = var.access_level

  scopes = var.token_scopes

}

# Add a project to the group 
resource "gitlab_project" "gitlab_wa_project" {
  name                   = "wa-${var.gitlab_project_name}-project"
  path                   = "wa-${var.gitlab_project_name}-project"
  description            = "An wa-${var.gitlab_project_name}-project test"
  namespace_id           = gitlab_group.gitlab_wa_group.id
  approvals_before_merge = 2

  # push_rules {
  #   prevent_secrets         = true
  #   reject_unsigned_commits = true
  # }

  depends_on = [
    gitlab_group.gitlab_wa_group
  ]
}

# Add GitLab deploy token
resource "gitlab_deploy_token" "deploy_token" {
  project    = gitlab_project.gitlab_wa_project.id
  name       = var.gitlab_deploy_token_name
  expires_at = var.expires_deploy_token_date
  scopes = var.deploy_token_scopes
}

# Add main branch protection to project
resource "gitlab_branch_protection" "main" {
  project                = gitlab_project.gitlab_wa_project.id
  branch                 = "main"
  push_access_level      = "maintainer"
  merge_access_level     = "maintainer"
  unprotect_access_level = "maintainer"
}