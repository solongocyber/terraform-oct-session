resource "aws_vpc""first_vpc"{
    cidr_block = var.cidr_block
    tags = {
        Name = var.name
    }
}