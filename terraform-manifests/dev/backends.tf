# terraform {
#   cloud {
#     organization = "ORGNAME"

#     workspaces {
#       name = "dev_tf_resources_ws"
#     }
#   }
# }

terraform {
  backend "s3" {
    bucket = "amz-poo-new-bkt"
    key    = "terraformstates/dev.tfstate"
    region = "us-east-1"
  }
}
