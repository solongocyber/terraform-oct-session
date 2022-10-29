#declare your remote backend

terraform {
  backend "s3" {
    bucket = "aws-session-may2022-solongo"
    key    = "session-9/qa/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "state-lock-table" # statelocking can be done by Dynamodb table on AWS. 
  }
}
