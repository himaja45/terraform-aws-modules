terraform {
  backend "remote" {
    organization = "Terraform_devops_demo"
    workspace = "https://app.terraform.io/app/Terraform_devops_demo/workspaces/terra_demo"
  }
}
