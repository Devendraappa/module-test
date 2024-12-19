provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "git::https://<token>@github.com/devendraappa/Devendraappa/pvt-repo-module.git/./vpc-module"
}"

  region              = "ap-south-1"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones  = ["ap-south-1a", "ap-south-1b"]
  vpc_name            = "my-vpc-1"
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
