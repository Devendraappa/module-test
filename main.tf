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

  region              = var.region
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
  vpc_name            = var.vpc_name
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_name" {
  value = module.vpc.vpc_name
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}
