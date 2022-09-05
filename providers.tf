terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  AWS_ACCESS_KEY_ID = "AWS_ACCESS_KEY_ID"
  AWS_SECRET_ACCESS_KEY = "AWS_SECRET_ACCESS_KEY"
}
