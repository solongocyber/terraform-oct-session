
terraform {
  backend "s3" {
    bucket = "aws-session-may2022-solongo"
    key    = "session-6/qa/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "state-lock-table" # statelocking can be done by Dynamodb table on AWS. 
  }
}

# manage same info and same configuration file in remote
# declare your remote backend
# one execution at same time that 's why use dynamodb for state locking'
# key changes whole infra will change.