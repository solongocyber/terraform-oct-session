
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

The identifier before the equals sign is the argument name,for example: `ami` `instance_type` and the expression after the equals sign is the argument's value `t2.micro`. 

Blocks:

A block is a container for other content. There are 2 types of block;
1. Resource block
2. Data block

A block has a type (resource in this example). Each block type defines how many labels must folow the type keyword. the ``resource block`` type expects 2 labels, which are `aws_instance` and `first_ec2` in this exmaple.

![ ] <img width="672" alt="Screen Shot 2022-10-14 at 5 04 47 PM" src="https://user-images.githubusercontent.com/63433671/195950714-5e824e07-836d-498e-b7a0-5f3ba4899d87.png">


## Basic commands in Terraform

``terraform init
``

`` terraform plan``

``terraform apply``

`` terraform destroy``



