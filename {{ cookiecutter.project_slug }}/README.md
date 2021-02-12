# {{ cookiecutter.project_name }}

Ambientes provisionados via Terragrunt/Terraform.

## Estrutura de diretórios

Formato:

```
{{ cookiecutter.project_slug }}/
└── <provider>/                         # Nome do cloud provider (aws, azure, etc)
    └── <ambiente>/                     # Nome do ambiente (staging, production, etc)
        ├── <região>/                   # Região do provider (us-east-1, eu-west-2, etc)
        │   ├── <blueprint>/            # Nome da blueprint (componente) do ambiente (vpc, rds-mysql, my-app, etc)
        │   │   └── terraform.tfvars    # Configuração do componente (Terragrunt, repositório e variáveis da Blueprint, etc)
        │   └── region.tfvars           # Variáveis comuns a *todas* as blueprints da *região*
        ├── account.tfvars              # Variáveis comuns a *todas* as blueprints do *ambiente*
        └── terraform.tfvars            # Configuração do Terragrunt (bucket S3 do state, comandos extras, etc)
```

Exemplo:

```
{{ cookiecutter.project_slug }}/
└── aws/
    └── production/
        ├── us-east-1/
        │   ├── eks-cluster/
        │   │   └── terragrunt.hcl
        │   ├── rds-postgres/
        │   │   └── terragrunt.hcl
        │   ├── vpc/
        │   │   └── terragrunt.hcl
        │   └── region.tfvars
        ├── account.tfvars
        └── terragrunt.hcl
```
