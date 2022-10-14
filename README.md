
# Terraform
## Description
What is Terraform?

Terraform is an open-source infrastructure as a code software tool that lets you build, change, and version cloud and on-prem resources safely and efficiently. Created by HashiCorp and it allows infrastructure to be express as code in a simple, human readdable language called HCL. It reads configuration files and provides an execution plan of changes, which can be reviewed for safety and then applied and provisioned. User define and provide data center infrastructure using a declarative configuration language.  Terraform manages external resources with "provider". Users can interact with Terraform providers by declaring resources or by calling data source. Terraform uses declarative configuration to describe the desired final state. 

## Installing Terraform

[Here is the Terraform official site link.] https://learn.hashicorp.com/tutorials/terraform/install-cli

We uses Amazon Linux run listed below commands:

``sudo yum install -y yum-utils``

``sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
``

`` sudo yum -y install terraform ``

## Terraform Syntax

Arguments and Blocks

Arguments:

An argument assigns a value to a particular name:

The identifier before the equals sign is the argument name, and the expression after the equals sign is the argument's value. 

Blocks:

A block is a container for other content.

A block has a type (resource in this example). Each block type defines how many labels must folow the type keyword. the resource block type expects 2 labels, which are aws_instance and first_ec2 in this exmaple.

![](vscode-remote://ssh-remote%2Bterraform-server/home/ec2-user/terraform-session-october/session-2/Screen%20Shot%202022-10-14%20at%204.44.02%20PM.png) 