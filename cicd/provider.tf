terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.37.0"
    }
  }
  backend "s3" {
    bucket = "bnsaws-remote-state"
    key    = "jenkins"
    region = "us-east-1"
    dynamodb_table = "bnsaws-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}