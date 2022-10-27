

# locals is used for something keep repeated things. For ex: Naming Standaard and Taging Standard
# Do not overuse locals. It will make the code more complicated. 

// Naming Standard:

// aws-uw2-nonprod-dev-cat-${resource_name}

// aws= cloud provider
// uw2 = us-west-2 region
// nonprod = Account
// dev = environmentcat 
// cat = project
// ${resource_type} = asg, alb, route53 ...


// Tagging Standard / Common tag

// common_tags
//   env = ""
//   project = ""
//   team = ""
//   owner = ""


// aws-uw2-nonprod-dev-cat-${resource_name}

locals {
    name = "aws-${var.region}-${var.stage}-${var.env}-${var.project}-rtype"
    common_tags = {
        env = "var.env"
        project = "var.project"
        team = "var.team"
        owner = "var.owner"
        managed_by = "terraform"

    }
}

