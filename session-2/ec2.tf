resource "aws_instance" "first_ec2" {
  ami           = "ami-0f924dc71d44d23e2"
  instance_type = "t2.micro"
  tags = {
    Name        = "first_ec2"
    Environment = "dev"
  }
}
