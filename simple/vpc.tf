provider "vpc" {
  region = "us-east-1"
}

module "servers" {
  source = "git::https://github.com/himaja45/terra_demo.git"
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name = "terraform_modules"
  tags = {
    name = "modules-example"
  }
}

terraform {
  required_providers {
    hashicorp/vpc {
      source = "hashicorp/vpc"
       version = ">= 1.6.0"
    }
  }
}

provider "hashicorp/vpc" {
  region = "us-east-1"
}
