module "vpc" {
  source = "git::https://github.com/Devendraappa/pvt-repo-module.git//vpc-module?ref=main"

  # Module variables
  cidr_block          = "10.0.0.0/16"
  vpc_name            = "demo-vpc"
  public_subnet_count = 2
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
}