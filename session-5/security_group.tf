resource "aws_security_group" "first_sg" {
  name        = "web_sg"
  description = "This is sg for web instance"
  #vpc_id is optional better to have if want to use specific vpc
}

// resource "aws_security_group_rule" "web_ingress" {
//   count = 5
//   # count.index = 4 (0,1,2,3,4)
//   type              = "ingress"
//   from_port         = element(var.ingress_ports, count.index)
//   to_port           = element(var.ingress_ports, count.index)
//   protocol          = "tcp"
//   cidr_blocks       = [ element(var.cidr_blocks, count.index)]
//   security_group_id = aws_security_group.first_sg.id
// }

// resource "aws_security_group_rule" "web_ingress" {
//   count = length(var.ingress_ports) #length can count automaticaly. Insted of giving numbers use length and it will count auto.
//    # count.index = 4 (0,1,2,3,4)
//   type              = "ingress"
//   from_port         = element(var.ingress_ports, count.index)
//   to_port           = element(var.ingress_ports, count.index)
//   protocol          = "tcp"
//   cidr_blocks       = ["0.0.0.0/0"]
//   security_group_id = aws_security_group.first_sg.id
// }

resource "aws_security_group_rule" "web_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.first_sg.id
}