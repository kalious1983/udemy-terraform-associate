provider "aws" {
    region = "ap-northeast-2"
}

resource "aws_instance" "example" {
    ami = "ami-09282971cf2faa4c9"
    instance_type = "t2.micro"
}