terraform {
  backend "s3" {
    bucket         = "dev-terraform-789"
    key            = "pvt/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-module"
    encrypt        = true
  }
}


module "vpc" {
  source     = "git::https://github.com/Devendraappa/pvt-repo-module.git?ref=v1.0.0"
  }
