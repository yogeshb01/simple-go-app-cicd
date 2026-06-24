terraform {
  required_version = ">= 1.5.7"

}

locals {
  region          = "us-west-1"
  name            = "simple-go-app"
  vpc_cidr        = "10.0.0.0/16"
  azs             = ["us-west-1a", "us-west-1c"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  

  tags = {
    Project = local.name
  }
}

provider "aws" {
  region = local.region
}