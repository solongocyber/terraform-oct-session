resource "aws_security_group" "first_sg" {
  name        = "web_sg"
  description = "This is sg for web instance"
  #vpc_id is optional better to have if want to use specific vpc
}

resource "aws_security_group_rule" "web_ingress" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.first_sg.id
}

resource "aws_security_group_rule" "web_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1" 
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.first_sg.id
}