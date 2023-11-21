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
  vpc_security_group_ids_var = [module.vpc.db_security_group]
  subnet_ids_var = module.vpc.sub_private
}

module "s3" {
  source = "./s3"
}