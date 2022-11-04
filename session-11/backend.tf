#declare your remote backend

terraform {
  backend "s3" {
    bucket = "aws-session-may2022-solongo"
    key    = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "state-lock-table" # statelocking can be done by Dynamodb table on AWS. 
    workspace_key_prefix = "session-11" # using this prefix only for non-default workspace
  # if i switch to dev workspace, my backend will look like /session-11/dev/terraform.tfstate

  }

}
# block for remote backend, this block is plugin. declaring remote state