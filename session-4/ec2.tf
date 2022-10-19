resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.first_sg.id ]
  user_data = data.template_file.user_data.rendered #rendered means
  tags = {
    Name        = var.env # instance-name.  variable=env ,default=value (dev)
    
  }
}

resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.first_sg.id ]
  user_data = data.template_file.user_data.rendered #rendered means
  tags = {
    Name        = "${var.env}-instance"
    Name        = format("%s-instance", var.env)  # instance-name.  variable=env ,default=value (dev)
  // dev-instance, qa-instance,stage-instance
  }
}