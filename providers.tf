provider "aws" {

  region = var.region

  default_tags {
    tags = {
      Environment = var.environment[terraform.workspace]
      CreatedBy   = "me"
    }
  }

}
