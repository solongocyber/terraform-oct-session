resource "aws_key_pair" "public_key"{
    key_name = "ter_key"
    public_key = file("~/.ssh/id_rsa.pub")
}
