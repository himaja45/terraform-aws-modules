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
variable "vpc_cidr" {
    type = string
    description = "value of cidr range for vpc"
    default = "10.0.0.0/16"
}
variable "public_subnet_az1_cidr" {
    type = string
    description = "value of public subnet for vpc"
    default = "10.0.1.0/24"
}
variable "private_app_subnet_az1_cidr" {
    type = string
    description = "value of private subnet for vpc"
}
variable "private_app_subnet_az2_cidr" {
    type =  string
     description = "value of private subnet"
}
variable "private_app_subnet_az3_cidr" {
    type = string
    desription = "value of private subnet"
}
variable "private_data_subnet_az1_cidr" {
    type = string
    description = "value of private data subnet"
}
variable "private_data_subnet_az2_cidr" {
    type = string
    description = "value of private data subnet"
}
variable "private_data_subnet_az3_cidr" {
    type = string
    description = "value of private data subnet"
}
