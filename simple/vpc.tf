provider "aws" {
  alias = "config_vpc"
  region = "us-east-1"
}

module "servers" {
  source = "./.."
  providers = {
    aws = aws.config_vpc
  }
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
    }
  }
}
