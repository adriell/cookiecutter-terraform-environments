terragrunt = {
  terraform {
    source = "git::ssh://git@{{ cookiecutter.customer_git_base_url }}/terraform-blueprints.git//{{ cookiecutter.provider_slug }}/{{ cookiecutter.terraform_slug }}?ref=v0.1.0"
  }

  include = {
    path = "${find_in_parent_folders()}"
  }
}


