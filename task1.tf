provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "name" {
  name = "terraform-up-and-running-state"

  lifecycle {
    prevent_destory = true
  }
}