provider "vpc" {
  region = "us-east-1"
}

module "aws_modules" "example" {
  source = "./terraform-aws-files"
  ami = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name = "terraform_modules"
  tags = {
    name = "modules-example"
  }
}
