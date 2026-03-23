provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "jenkins" {
  ami           = "ami-0abcdef12345"
  instance_type = "t2.micro"
}