variable "gitlab_token" {
  type        = string
  description = "GitLab Server Tocken"
  sensitive   = true
}
variable "gitlab_groups_name" {
  type        = list(string)
  description = "GitLab Groups name"
}
variable "gitlab_project_name" {
  type        = string
  description = "Gitlab Project Name"
}

variable "gitlab_group_token_name" {
  type        = string
  description = "Gitlab Group Token name"
}

variable "expires_token_date" {
  type        = string
  description = "GitLab expiration date for token"
}

variable "access_level" {
  type        = string
  description = "GitLab token access level"
}

variable "token_scopes" {
  type        = list(string)
  description = "GitLab token scopes"
}

variable "gitlab_deploy_token_name" {
  type        = string
  description = "Gitlab deploy Token name"
}

variable "expires_deploy_token_date" {
  type        = string
  description = "GitLab expiration date for token"
}

variable "deploy_token_scopes" {
  type        = list(string)
  description = "GitLab token scopes"
}

