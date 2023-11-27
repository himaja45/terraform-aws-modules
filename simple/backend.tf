terraform {
  backend "remote" {
    organization = "Terraform_devops_demo"
    workspaces 
     name = "terra_demo"
  }
}
