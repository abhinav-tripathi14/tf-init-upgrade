provider "aws" {
  region  = "ap-south-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "<= 5.65.0" 
    }
  }
}

resource "aws_backup_logically_air_gapped_vault" "example" {
  name               = "lag-example-vault"
  max_retention_days = 7
  min_retention_days = 7
}
