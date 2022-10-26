resource "aws_sqs" "main" {
    name = "${var.env}-sqs-0"
    tags = {
        Name = "${var.env}-sqs-0"
        Team = var.team
        Owner = var.owner
        Environment = var.environment
        Project = "AWS"
        Account = "Nonprod"
    }
}

resource "aws_sqs" "main_1" {
    name = "main-sqs-1"
    tags = {
        Name = "main-sqs-1"
        Team = "DevOps"
        Owner = "Solongo"
        Environment = "Dev"
        Project = "AWS"
        Account = "Nonprod"
    }
}

resource "aws_sqs" "main_2" {
    name = "main-sqs-2"
    tags = {
        Name = "main-sqs-2"
        Team = "DevOps"
        Owner = "Solongo"
        Environment = "Dev"
        Project = "AWS"
        Account = "Nonprod"
    }
}

