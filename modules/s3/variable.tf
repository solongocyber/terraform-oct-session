variable "bucket_name" {
    type = string
    description = "This is a variable for s3 bucket name. Bucket name has to be uniqe, lower case"
    default = "terraform-module-test-bucket-solongo"
}

variable "env" {
    type = string
    description = " Environtment variable"
    default = "dev"
}

variable "bucket_acl" {
    type = string
    description = "Bucket level Acess Contol List."
    default = "private"
}