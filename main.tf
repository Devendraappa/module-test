#module "vpc" {
  #source = "git::github.com/devendraappa/pvt-repo-module//?ref=v1.0.0"
  # https://github.com/Devendraappa/pvt-repo-module.git
  
  # Add any input variables for the module here
  #region = "ap-south-1"  # Example of passing a variable to the module
#}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "git::github.com/devendraappa/pvt-repo-module//?ref=v1.0.0"
  token  = var.git_token

  region              = var.region
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
  vpc_name            = var.vpc_name
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_name" {
  value = module.vpc.vpc_name
}
