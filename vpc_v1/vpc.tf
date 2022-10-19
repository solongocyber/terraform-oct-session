resource "aws_vpc""first_vpc"{
    cidr_block = var.cidr_block
    tags = {
        Name = "${var.env}-vpc_v1"
    }
}