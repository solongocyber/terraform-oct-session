output "homework_vpc" {
    value = aws_vpc.first_vpc.id
}

output "homework_vpc_arn" {
    value = aws_vpc.first_vpc.arn
}

output "vpc_owner_id"{
    value = aws_vpc.first_vpc.owner_id
}

output "aws_instance_public_ip" {
    value = aws_instance.task_instance.public_ip
}