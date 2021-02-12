# Cookiecutter - Terraform Environments

Template do [Cookiecutter][cookiecutter] para criação de um repositório de ambientes
provisionados via [Terragrunt][terragrunt]/[Terraform][terraform].

[cookiecutter]: https://cookiecutter.readthedocs.io/en/latest/
[terragrunt]: https://github.com/gruntwork-io/terragrunt/
[terraform]: https://www.terraform.io/

## Pré-requisitos

- Cookiecutter 1.7+
- Terraform 0.12.x
- Terragrunt 0.28.x

## Uso

```
cookiecutter git@github.com:adriell/cookiecutter-terraform-environments.git
```

O comando acima criará um diretório com estrutura igual (ou próxima) à seguinte:

```
terraform-environments/
├── aws/
│   └── production/
│       ├── us-east-1/
│       │   ├── vpc/
│       │   │   └── terragrunt.hcl
│       │   └── region.tfvars
│       ├── account.tfvars
│       └── terragrunt.hcl
├── .vscode/
│   └── settings.json
├── .editorconfig
├── .gitignore
└── README.md
```