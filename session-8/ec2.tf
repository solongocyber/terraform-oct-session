resource "aws_instance" "main" {
  ami           = data.aws_ami.amazon_linux2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.first_sg.id ]
  key_name = aws_key_pair.terraform_server.key_name
    // Name        = var.env # instance-name.  variable=env ,default=value (dev)
    
  

  provisioner "file" {
    source = "/home/ec2-user/terraform-oct-session/session-8/index.html" #source = terraform machine , local machine
    destination = "/tmp/index.html" # remote machine, EC@ instance that I'm creating now.
    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip # do not  use ""
      private_key = file("~/.ssh/id_rsa")
    }
  }
############### Remote Exec Provisioner ############################

provisioner "remote-exec" {
  inline = [
    "sudo yum install httpd -y",
    "sudo systemctl enable httpd",
    "sudo systemctl start httpd",
    "sudo cp /tmp/index.html /var/www/html/index.html"
  ]

    
    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip # do not  use ""
      private_key = file("~/.ssh/id_rsa")
    }
  }

}
// resource "aws_instance" "main1" {
//   ami           = data.aws_ami.amazon_linux2.image_id
//   instance_type = var.instance_type
//   vpc_security_group_ids = [ aws_security_group.first_sg.id ]
//   user_data = data.template_file.user_data.rendered #rendered means
//   tags = {
//     Name        = "${var.env}-instance"
//     Name        = format("%s-instance", var.env)  # instance-name.  variable=env ,default=value (dev)
//   // dev-instance, qa-instance,stage-instance
//   }
// }

resource "aws_key_pair" "terraform_server" {
  key_name = "key"
  public_key = file("~/.ssh/id_rsa.pub")
}


############ Local exec #################

resource "null_resource" "local_scripts" {
  provisioner "local-exec" {

  
  command = "echo 'Hello from local exec' > local.txt "
}
}

# any resources declared in the null resource block Not added to tfstate file.