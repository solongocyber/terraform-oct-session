data "terraform_remote_state" "db"{
    backend = "s3"
    config = {
     bucket = "aws-session-may2022-solongo"
     key    = "session-7/backend/terraform.tfstate"
     region = "us-east-2"
    
    }
}