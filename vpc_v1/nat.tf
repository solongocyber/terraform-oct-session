resource "aws_nat_gateway" "homework"{
    allocation_id = aws_eip.homework.id
    connectivity_type = "public"
    subnet_id = aws_subnet.public_subnet_1.id
    tags = {
        Name = var.aws_nat_gateway
    }
}