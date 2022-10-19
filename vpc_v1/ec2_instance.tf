resource "aws_instance" "task_instance"{
    ami = data.aws_ami.amazon_linux2.image_id
    instance_type = var.instance_type
    // vpc_id = aws_vpc.first_vpc.id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.sg_dev.id ]
    // key_name = 
    availability_zone = var.az_1
    subnet_id = aws_subnet.public_subnet_1.id
    user_data = data.template_file.user_data.rendered
}