# AWS Provider TERRAFORM

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure AWS Provider Authentication
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "terraform"

}

# Create resource - Group
resource "aws_iam_group" "admins" {
  name = "admins"
  path = "/users/"
}

