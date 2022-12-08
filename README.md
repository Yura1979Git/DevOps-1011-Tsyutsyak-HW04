Terraform. Terragrunt
Завдання 1

Написати terraform конфігурацію для створення ресурсів на вашому gitlab сервері:

    group
    project
    gitlab_group_access_token
    gitlab_deploy_token
    gitlab_branch_protection

Завдання 2

Генерувати документацію за допомогою terraform-docs
Завдання 3

Перевірити код за допомогою зовнішніх інструментів:

    tfsec
    tflint
    checkov

Завдання 4

За допомогою Terragrunt огорнути:

    backend
    provider

Виконання завдання оформити у вигляді Pull Request. Terraform код, документація та скріншоти перевірок. Посилання на pull request розмістити у особовому кабінеті.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.2.0 |
| aws | >= 4.0 |
| gitlab | >= 3.20.0 |

## Providers

| Name | Version |
|------|---------|
| gitlab | 3.20.0 |

## Resources

| Name | Type |
|------|------|
| [gitlab_branch_protection.main](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/branch_protection) | resource |
| [gitlab_deploy_token.deploy_token](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/deploy_token) | resource |
| [gitlab_group.gitlab_wa_group](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group) | resource |
| [gitlab_group_access_token.gitlab_wa_group_at](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group_access_token) | resource |
| [gitlab_project.gitlab_wa_project](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_level | GitLab token access level | `string` | `"developer"` | no |
| deploy\_token\_scopes | GitLab token scopes | `list(string)` | ```[ "read_repository", "read_registry" ]``` | no |
| expires\_deploy\_token\_date | GitLab expiration date for token | `string` | `"2023-01-01T00:00:00.000Z"` | no |
| expires\_token\_date | GitLab expiration date for token | `string` | `"2023-01-01"` | no |
| gitlab\_deploy\_token\_name | Gitlab deploy Token name | `string` | `"Deploy Token for HW"` | no |
| gitlab\_group\_name | GitLab Group name | `string` | `"101122"` | no |
| gitlab\_group\_token\_name | Gitlab Group Token name | `string` | `"Token for HW"` | no |
| gitlab\_project\_name | Gitlab Project Name | `string` | `"terraform_hw03"` | no |
| gitlab\_token | GitLab Server Tocken | `string` | n/a | yes |
| gitlab\_url | GitLab Server URL | `string` | `"https://gitlab.tyi.name/api/v4/"` | no |
| token\_scopes | GitLab token scopes | `list(string)` | ```[ "api" ]``` | no |

## Outputs

| Name | Description |
|------|-------------|
| deploy\_token | Gitlab deploy token |
| gitlab\_group | Gitlab Group web url |
| gitlab\_project | Gitlab Project web url |
| gitlab\_wa\_group\_at | Gitlab access token |
<!-- END_TF_DOCS -->