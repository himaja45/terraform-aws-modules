provider "aws" {
  region     = "us-east-1"  # replace with your desired AWS region
  access_key = "AKIAZ27LHRMD4BPPEXHI"
  secret_key = "TUvht4kruL5icSyNe0/cRDvROizKarQixv7c3S/B"
}


resource "aws_instance" "example" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name      = "terra_demo"
  tags = {
    Name = "example-instance"
  }
}
