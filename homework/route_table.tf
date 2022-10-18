resource "aws_route_table" "public_rt"{
    vpc_id = aws_vpc.first_vpc.id
    tags = {
        Name = var.public_route_table
    }
}

resource "aws_route_table_association" "public_subnet_1"{
    subnet_id = aws_subnet.public_subnet_1.id
    route_table_id = aws_route_table.public_rt.id

}