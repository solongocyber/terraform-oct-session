resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.first_sg.id ]
  tags = {
    Name        = var.env # instance-name.  variable=env ,default=value (dev)
    
  }
}