terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

variable "region" {
    type = string
    default = "eu-west-1"
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  profile = "and"
  default_tags {
    tags = {
      Contact = "digby.marsh"
      Project = "RolaxResort"
    }
  }
}

module "network" {
    source = "./network"
    region = var.region
}
