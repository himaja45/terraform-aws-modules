# environmental variables
variable "region" {
    type = string
    description = "aws region"
    default = "us-east-1"
}
variable "project_name" {
    type = string
    description = "terraform modules"
}
variable "environment" {}

# vpc variables
variable "vpc_cidr" {}
variable "public_subnet_az1_cidr" {}
variable "private_app_subnet_az1_cidr" {}
variable "private_app_subnet_az2_cidr" {}
variable "private_app_subnet_az3_cidr" {}
variable "private_data_subnet_az1_cidr" {}
variable "private_data_subnet_az2_cidr" {}
variable "private_data_subnet_az3_cidr" {}
