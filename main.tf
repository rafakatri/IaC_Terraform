terraform {
  required_version = ">= 0.12"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

module "vpc" {
  source = "./vpc"
}

module "ec2" {
  source = "./ec2"
}

module "rds" {
  source = "./rds"
}

module "s3" {
  source = "./s3"
}