module "servers" {
  source = "./.."
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name = "terraform_modules"
  vpc_id = aws_vpc.vpc.id
  cidr_block           = var.vpc_cidr
  aws_internet_gateway = cidr_block
  public_subnet_az1 = cidr_block
  private_app_subnet_az1 = cidr_block
  private_app_subnet_az2 = cidr_block
  private_app_subnet_az3 = cidr_block
  private_data_subnet_az1 = cidr_block
  private_data_subnet_az2 = cidr_block
  private_data_subnet_az3 = cidr_block
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
