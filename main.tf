terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = ""

    workspaces {
      prefix = ""
    }
  }
}

provider "aws" {
  region  = var.aws_region
  version = "2.70.0"
}

locals {
  tags = {
    Owner     = var.owner
    Terraform = "true"
  }
}

# Your modules/resources definitions here ...
