data "aws_ami" "amazon_linux2" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "template_file" "user_data"{
    template = file("user_data.sh")
    vars = {
        environment = var.env
    }
}

// data "template_file" "public_key"{
//   template = file("~/.ssh/id_rsa.pub")
// }
