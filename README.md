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

## Modules

| Name | Source | Version |
|------|--------|---------|
| gitlab\_group | ./modules/gitlab | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_level | GitLab token access level | `string` | `"developer"` | no |
| deploy\_token\_scopes | GitLab token scopes | `list(string)` | ```[ "read_repository", "read_registry" ]``` | no |
| expires\_deploy\_token\_date | GitLab expiration date for token | `string` | `"2023-01-01T00:00:00.000Z"` | no |
| expires\_token\_date | GitLab expiration date for token | `string` | `"2023-01-01"` | no |
| gitlab\_deploy\_token\_name | Gitlab deploy Token name | `string` | `"Deploy Token for HW"` | no |
| gitlab\_group\_token\_name | Gitlab Group Token name | `string` | `"Token for HW"` | no |
| gitlab\_groups\_name | GitLab Groups name | `list(string)` | ```[ "101122" ]``` | no |
| gitlab\_project\_name | Gitlab Project Name | `string` | `"terraform_hw03"` | no |
| gitlab\_token | GitLab Server Tocken | `string` | n/a | yes |
| gitlab\_url | GitLab Server URL | `string` | `"https://gitlab.tyi.name/api/v4/"` | no |
| token\_scopes | GitLab token scopes | `list(string)` | ```[ "api" ]``` | no |

## Outputs

| Name | Description |
|------|-------------|
| deploy\_tokens | Gitlab deploy tokens |
| gitlab\_groups\_url | Gitlab Groups web url |
| gitlab\_projects | Gitlab Projects web url |
| gitlab\_wa\_groups\_at | Gitlab access tokens |
<!-- END_TF_DOCS -->