module "servers" {
  source = "./.."
  var.vpc_cidr = 10.0.0.0/16
  var.public_subnet_az1_cidr = 10.0.101.0/24
  var.private_app_subnet_az1_cidr = 10.0.1.0/24
  var.private_app_subnet_az2_cidr = 10.0.2.0/24
  var.private_app_subnet_az3_cidr = 10.0.3.0/24
  var.private_data_subnet_az1_cidr = 10.0.21.0/24
  var.private_data_subnet_az2_cidr = 10.0.22.0/24
  var.private_data_subnet_az3_cidr = 10.0.23.0/24
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
