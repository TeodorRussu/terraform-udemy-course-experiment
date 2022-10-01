terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}

provider "aws" {
  profile = "gmx-admin"
  region = "eu-central-1"
  # Configuration options
}
