terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Terraform_devops_demo"
    workspaces {
     name = "terraform_modules"
   }
  }
}
