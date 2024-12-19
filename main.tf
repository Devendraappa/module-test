module "vpc" {
  source = "git::github.com/devendraappa/pvt-repo-module//"
  
  # Add any input variables for the module here
  region = "ap-south-1"  # Example of passing a variable to the module
}
