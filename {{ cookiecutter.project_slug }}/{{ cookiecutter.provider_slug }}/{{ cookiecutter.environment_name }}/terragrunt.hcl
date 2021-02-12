terragrunt = {
  remote_state {
    backend = "s3"

    config {
      encrypt        = true
      bucket         = "{{ cookiecutter.customer_slug }}-tf-states-{{ cookiecutter.environment_name }}-${get_aws_account_id()}"
      key            = "${path_relative_to_include()}/terraform.tfstate"
      region         = "us-east-1"
      dynamodb_table = "terraform-locks-{{ cookiecutter.environment_name }}-${get_aws_account_id()}"
    }

    skip_credentials_validation = "true"
    skip_metadata_api_check     = "true"

    s3_bucket_tags {
      Name       = "Terraform state storage"
      Terragrunt = "true"
    }

    dynamodb_table_tags {
      Name       = "Terraform lock table"
      Terragrunt = "true"
    }
  }

  terraform {
    extra_arguments "common_vars" {
      commands = ["${get_terraform_commands_that_need_vars()}"]

      optional_var_files = [
        "${get_tfvars_dir()}/${find_in_parent_folders("account.tfvars", "ignore")}",
        "${get_tfvars_dir()}/${find_in_parent_folders("region.tfvars", "ignore")}",
      ]
    }
  }
}
