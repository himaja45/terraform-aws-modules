provider "vpc" {
  region = "us-east-1"
}

module "servers" {
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name = "terraform_modules"
  tags = {
    name = "modules-example"
  }
}
