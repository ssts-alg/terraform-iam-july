provider "aws" {
  region = "us-east-1"
}


terraform {
  backend "s3" {
    bucket         = "terraform-tfstatefile-380377972418"
    key            = "test-project-tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform"
  }
}
