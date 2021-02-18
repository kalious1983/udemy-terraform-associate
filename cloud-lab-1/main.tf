terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "kalious1983"

    workspaces {
      name = "udemy-terraform-associate"
    }
  }
}

provider "aws" {
    region = "ap-northeast-2"
    aws_access_key = var.aws_access_key
    aws_secret_key = var.aws_secret_key
}

resource "aws_s3_bucket" "test" {
  bucket_prefix = "test-"
}
