provider "aws" {
  region = "us-east-1"
}

module "servers" {
  source = "./.."
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name = "terraform_modules"
  tags = {
    name = "modules-example"
  }
}

terraform {
  required_version = "<=1.6.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "2.70.0"
      configuration_aliases = [aws.alternates]
    }
  }
}
