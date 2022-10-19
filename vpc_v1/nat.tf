resource "aws_nat_gateway" "homework"{
    allocation_id = aws_eip.eip.id
    connectivity_type = "public"
    subnet_id = aws_subnet.public_subnet_1.id
    tags = {
        Name = "${var.env}-nat_gw"
    }
}