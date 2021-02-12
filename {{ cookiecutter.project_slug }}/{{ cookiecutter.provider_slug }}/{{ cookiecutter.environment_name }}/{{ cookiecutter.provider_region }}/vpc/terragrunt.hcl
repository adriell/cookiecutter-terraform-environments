terragrunt = {
  terraform {
    source = "git::ssh://git@{{ cookiecutter.customer_git_base_url }}/terraform-blueprints.git//{{ cookiecutter.provider_slug }}/network/vpc?ref=v0.1.0"
  }

  include = {
    path = "${find_in_parent_folders()}"
  }
}

cidr = "{{ cookiecutter.environment_vpc_cidr }}"
