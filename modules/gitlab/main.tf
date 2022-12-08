# Add a group
resource "gitlab_group" "gitlab_wa_group" {
  for_each         = toset(var.gitlab_groups_name)
  name             = "wa-${each.key}"
  path             = "wa-${each.key}"
  description      = "An wa-${each.key} group"
  visibility_level = "internal"
}

# Add GitLab Token
resource "gitlab_group_access_token" "gitlab_wa_group_at" {
  for_each     = gitlab_group.gitlab_wa_group
  group        = gitlab_group.gitlab_wa_group[each.key].name
  name         = var.gitlab_group_token_name
  expires_at   = var.expires_token_date
  access_level = var.access_level

  scopes = var.token_scopes

}

# Add a project to the group 
resource "gitlab_project" "gitlab_wa_project" {
  for_each               = gitlab_group.gitlab_wa_group
  name                   = "${each.value.path}-project"
  path                   = "${each.value.path}-project"
  description            = "${each.value.path}-project test"
  namespace_id           = gitlab_group.gitlab_wa_group[each.key].id
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
  for_each   = gitlab_project.gitlab_wa_project
  project    = gitlab_project.gitlab_wa_project[each.key].id
  name       = var.gitlab_deploy_token_name
  expires_at = var.expires_deploy_token_date
  scopes     = var.deploy_token_scopes
}

# Add main branch protection to project
resource "gitlab_branch_protection" "main" {
  for_each               = gitlab_project.gitlab_wa_project
  project                = gitlab_project.gitlab_wa_project[each.key].id
  branch                 = "main"
  push_access_level      = "maintainer"
  merge_access_level     = "maintainer"
  unprotect_access_level = "maintainer"
}