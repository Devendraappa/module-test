module "vpc" {
  source     = "git::https://github.com/Devendraappa/pvt-repo-module.git?ref=v1.0.0"
  cidr_block = "10.0.0.0/16"
  name       = "my-vpc"
}
