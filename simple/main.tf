provider "aws" {
  region     = "us-east-1"  
  export AWS_ACCESS_KEY_ID = "AWS_ACCESS_KEY"
  export AWS_SECRET_ACCESS_KEY = "AWS_SECRET_KEY"
  export AWS_REGION = "us-east-1"
}


resource "aws_instance" "example" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name      = "terra_demo"
  tags = {
    Name = "example-instance"
  }
}
