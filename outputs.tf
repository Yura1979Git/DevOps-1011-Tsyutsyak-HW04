output "gitlab_groups_url" {
  value       = module.gitlab_group.gitlab_groups_url
  description = "Gitlab Groups web url"
}

output "gitlab_projects" {
  value       = module.gitlab_group.gitlab_projects
  description = "Gitlab Projects web url"
}

output "gitlab_wa_groups_at" {
  value       = module.gitlab_group.gitlab_wa_groups_at
  description = "Gitlab access tokens"
  sensitive   = true
}

output "deploy_tokens" {
  value       = module.gitlab_group.deploy_tokens
  description = "Gitlab deploy tokens"
  sensitive   = true
}