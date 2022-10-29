variable "ami" {
    type = string
    description = "Amazon Machine Image"
    default = "ami-0f924dc71d44d23e2"
}

variable "instance_type" {
    type = string
    description = "size of EC2"
    default = "t2.micro"
}

variable "env" {
    type = string
    description = "Environment Variable"
    default = "dev"
}

variable "s3_bucket_name" {
    type = string
    description = "S3 bucket name for Application to upload images"
    default = "test"
}