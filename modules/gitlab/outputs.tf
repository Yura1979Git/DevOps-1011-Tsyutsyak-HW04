output "gitlab_groups_url" {
  value       = values(gitlab_group.gitlab_wa_group)[*].web_url
  description = "Gitlab Groups web url"
}

output "gitlab_projects" {
  value       = values(gitlab_project.gitlab_wa_project)[*].web_url
  description = "Gitlab Projects web url"
}

output "gitlab_wa_groups_at" {
  value       = values(gitlab_group_access_token.gitlab_wa_group_at)[*].token
  description = "Gitlab access tokens"
  sensitive   = true
}

output "deploy_tokens" {
  value       = values(gitlab_deploy_token.deploy_token)[*].token
  description = "Gitlab deploy tokens"
  sensitive   = true
}