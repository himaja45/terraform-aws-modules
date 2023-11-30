# environmental variables
variable "region" {
    type = string
    description = "aws region"
    default = "us-east-1"
}
variable "project_name" {
    type = string
    description = "terraform modules"
    default = "vpc_archiitecture"
}
variable "environment" {}

# vpc variables
variable "vpc_cidr" {
    type = string
    description = "value of cidr range for vpc"
    default = "10.0.0.0/16"
}
variable "public_subnet_az1_cidr" {
    type = string
    description = "value of public subnet for vpc"
    default = "10.0.101.0/24"
}
variable "private_app_subnet_az1_cidr" {
    type = string
    description = "value of private subnet for vpc"
    default = "10.0.1.0/24"
}
variable "private_app_subnet_az2_cidr" {
    type =  string
    description = "value of private subnet"
    default = "10.0.2.0/24"
}
variable "private_app_subnet_az3_cidr" {
    type = string
    description = "value of private subnet"
    default = "10.0.3.0/24"
}
variable "private_data_subnet_az1_cidr" {
    type = string
    description = "value of private data subnet"
    default = "10.0.21.0/24"
}
variable "private_data_subnet_az2_cidr" {
    type = string
    description = "value of private data subnet"
    default = "10.0.22.0/24"
}
variable "private_data_subnet_az3_cidr" {
    type = string
    description = "value of private data subnet"
    default = "10.0.23.0/24"
}
