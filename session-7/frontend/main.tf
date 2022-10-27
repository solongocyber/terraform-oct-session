
 

######### v1 ############

resource "aws_sqs_queue" "main" {
    name = "main-sqs-0" 
    tags = {
        Name = "main-sqs"  # this is name tag and it match with resource name.
        Team = "DevOps"      # others are comman tags
        Owner = "Solongo"
        Environment = "Dev"
        Project = "AWS"
        Account = "Nonprod"
    }
}

###### v2 with variable #######

resource "aws_sqs_queue" "main1" {
    name = "${var.env}-sqs-1"
    tags = {
        Name = "${var.env}-sqs-0"
        Team = var.team
        Owner = var.owner
        Environment = var.environment
        Project = var.project
        Account = var.stage
    }
}

######### v3 with local ########

resource "aws_sqs_queue" "main_2" {
    name = replace(local.name, "rtype", "sqs-2")
    tags = merge(local.common_tags, { Name = replace(local.name, "rtype" , "sqs-2")})
}

# Name tag means it match with resource name.
# Comman tags
// tags = merge(local.common_tags, { Name = replace(local.name, "rtype", "sqs-1") })
//   name = "aws-${var.region}-${var.stage}-${var.env}-${var.project}-rtype"