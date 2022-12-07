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
| gitlab | >= 3.20.0 |

## Resources

| Name | Type |
|------|------|
| [gitlab_group.gitlab_wa_hw03_group](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group) | resource |
| [gitlab_project.gitlab_wa_hw03_project](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| gitlab\_group\_name | GitLab Group name | `string` | `"101122"` | no |
| gitlab\_project\_name | Gitlab Project Name | `string` | `"terraform_hw03"` | no |
| gitlab\_token | GitLab Server Tocken | `string` | n/a | yes |
| gitlab\_url | GitLab Server URL | `string` | `"https://gitlab.tyi.name/api/v4/"` | no |

## Outputs

| Name | Description |
|------|-------------|
| gitlab\_group | Gitlab Group web url |
| gitlab\_project | Gitlab Project web url |
<!-- END_TF_DOCS -->