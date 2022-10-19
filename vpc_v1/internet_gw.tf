resource "aws_internet_gateway" "internet_gateway"{
    vpc_id = aws_vpc.first_vpc.id
    tags = {
        Name = "${var.env}-internet_gw"
    }
}