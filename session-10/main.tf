module "ec2" {
    source = "github.com/solongocyber/terraform-oct-session/modules/ec2"
    env = "dev"
    instance_type = "t2.micro"
    ami = "ami-0f924dc71d44d23e2"

}