module "servers" {
  source = "./.."
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name = "terraform_modules"
  vpc_id = aws_vpc.vpc.id
  cidr_block           = var.vpc_cidr
  aws_internet_gateway = aws_internet_gateway.internet_gateway
  public_subnet_az1_id = aws_subnet.public_subnet_az1.id
  private_app_subnet_az1_id = aws_subnet.private_app_subnet_az1.id
  private_app_subnet_az2_id = aws_subnet.private_app_subnet_az2.id
  private_app_subnet_az3_id = aws_subnet.private_app_subnet_az3.id
  private_data_subnet_az1_id = aws_subnet.private_data_subnet_az1.id
  private_data_subnet_az2_id = aws_subnet.private_data_subnet_az2.id
  private_data_subnet_az3_id = aws_subnet.private_data_subnet_az3.id
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
