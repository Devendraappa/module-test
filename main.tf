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

  #region              = "ap-south-1"
  #vpc_cidr            = "10.0.0.0/16"
  #public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  #availability_zones  = ["ap-south-1a", "ap-south-1b"]
  #vpc_name            = "module-vpc"
}
