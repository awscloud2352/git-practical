/*
terraform {
  cloud {
    organization = "ORGNAME"

    workspaces {
      name = "qa_tf_resources_ws"
    }
  }
}
*/

terraform {
  backend "s3" {
    bucket = "aws-practical-001"
    key    = "qa.tfstate"
    region = "us-east-1"
    #dynamodb_table = "terraform-lock"
    use_lockfile = true
  }
}
