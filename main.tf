module "vpc" {
  source = "git::ssh://git@github.com/Devendraappa/pvt-repo-module.git//vpc-module?ref=main"
  
  # Add any input variables for the module here
  region = "ap-south-1"  # Example of passing a variable to the module
}