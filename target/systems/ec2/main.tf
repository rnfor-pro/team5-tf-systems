terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.8.0"
    }
  }
}

# provider "aws" {
#   region = "us-west-2"
# }

module "server" {
  source = "../modules/ec2"
  num = 5
  instance_type = "t2.micro"
  ami = "ami-06ca3ca175f37dd66"
  region = "us-east-1"
}
