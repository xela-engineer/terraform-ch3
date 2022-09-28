resource "aws_instance" "temp" {
  instance_type = terraform.workspace == "default" ? "t2.medium" : "t2.micro"
  ami           = "ami-0f924dc71d44d23e2"

}

terraform {
  backend "s3" {
    key            = "workspaces-example-2/terraform.tfstate"
  }
}