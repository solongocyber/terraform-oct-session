# Local Module = module is in your file system

# Remote Module = module is in remote system such as SCM, HTTP url, Terraform Cloud or Enterprise


module "s3" {
    source = "../../modules/s3"  #Where the child module is
    env = "dev"
    bucket_acl = "private"
    bucket_name = "terraform-module-test-bucket-solongo"

}

module "ec2" {
    source = "../../modules/ec2"
    env = "dev"
    instance_type = "t2.micro" 
    ami = "ami-0f924dc71d44d23e2"
    s3_bucket_name = module.s3.s3_bucket_name # Refrence to child module outputs = module.module name.output_name
}