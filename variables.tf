variable "gitlab_url" {
  description = "GitLab Server URL"
  type        = string
  default     = "https://gitlab.tyi.name/api/v4/"
}
variable "gitlab_token" {
  type        = string
  description = "GitLab Server Tocken"
  sensitive   = true
}
variable "gitlab_group_name" {
  type        = string
  description = "GitLab Group name"
  default     = "101122"
}
variable "gitlab_project_name" {
  type        = string
  description = "Gitlab Project Name"
  default     = "terraform_hw03"
}

variable "gitlab_group_token_name" {
  type        = string
  description = "Gitlab Group Token name"
  default     = "Token for HW"
}

variable "expires_token_date" {
  type        = string
  description = "GitLab expiration date for token"
  default = "2023-01-01"
}

variable "access_level" {
  type        = string
  description = "GitLab token access level"
  default     = "developer"
}

variable "token_scopes" {
  type        = list(string)
  description = "GitLab token scopes"
  default     = ["api"]
}

variable "gitlab_deploy_token_name" {
  type        = string
  description = "Gitlab deploy Token name"
  default     = "Deploy Token for HW"
}

variable "expires_deploy_token_date" {
  type        = string
  description = "GitLab expiration date for token"
  #default     = timeadd(timestamp(), "24h")
  default = "2023-01-01T00:00:00.000Z"
}

variable "deploy_token_scopes" {
  type        = list(string)
  description = "GitLab token scopes"
  default     = ["read_repository", "read_registry"]
}

