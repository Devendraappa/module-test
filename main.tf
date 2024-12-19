module "vpc" {
  source = "https://github.com/Devendraappa/pvt-repo-module"
  
  # Add any input variables for the module here
  region = "ap-south-1"  # Example of passing a variable to the module
}
