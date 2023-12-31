provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "example" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name      = "terra_demo"
  tags = {
    Name       = "example-instance"
    GithubRepo = "terraform-aws-vpc"
  }
}
