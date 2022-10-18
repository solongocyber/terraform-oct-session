resource "aws_subnet" "public_subnet_1"{
    vpc_id = aws_vpc.first_vpc.id
    cidr_block = var.public_subnet_1_cidr
    availability_zone = var.az_1
    tags = {
        Name = var.pub_subnet_1
    }
}

resource "aws_subnet" "public_subnet_2"{
    vpc_id = aws_vpc.first_vpc.id
    cidr_block = var.public_subnet_2_cidr
    availability_zone = var.az_2
    tags = {
        Name = var.pub_subnet_2
    }
}