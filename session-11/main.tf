resource "aws_sqs_queue" "mian" {
    name = "${terraform.workspace}-sqs"
}