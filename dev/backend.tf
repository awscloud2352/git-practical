/*
terraform {
  cloud {
    organization = "ORGNAME"

    workspaces {
      name = "dev_tf_resources_ws"
    }
  }
}
*/

terraform {
  backend "s3" {
    bucket = "aws-practical-001"
    key    = "terraformstates/dev.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}
