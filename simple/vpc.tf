module "servers" {
  source = "./.."
  var.vpc_cidr
  var.public_subnet_az1_cidr
  var.private_app_subnet_az1_cidr
  var.private_app_subnet_az2_cidr
  var.private_app_subnet_az3_cidr
  var.private_data_subnet_az1_cidr
  var.private_data_subnet_az2_cidr
  var.private_data_subnet_az3_cidr
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
