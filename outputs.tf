output "gitlab_group" {
  value       = gitlab_group.gitlab_wa_group.web_url
  description = "Gitlab Group web url"
}

output "gitlab_project" {
  value       = gitlab_project.gitlab_wa_project.web_url
  description = "Gitlab Project web url"
}

output "gitlab_wa_group_at" {
  value = gitlab_group_access_token.gitlab_wa_group_at.token
  description = "Gitlab access token"
  sensitive = true
}

output "deploy_token" {
  value = gitlab_deploy_token.deploy_token.token
  description = "Gitlab deploy token"
  sensitive = true
}