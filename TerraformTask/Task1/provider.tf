terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
   backend "s3" {
    bucket = "ahmed-ashraf-s3-bucket-1234" 
    key    = "terrafrom.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}