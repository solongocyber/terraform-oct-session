variable "env" {
  type        = string
  description = "This is a variable for Environment"
  default     = "dev"
}

variable "ami" {
  type        = string
  description = " This a variable for ami"
  default     = "ami-0f924dc71d44d23e2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ingress_ports"{
  type = list(string)
  description = "List of ingress rules"
  default = [ "22", "80", "443", "3306", "53" ]
}

// variable "cidr_blocks" {
//   type = list(string)
//   default = [ "0.0.0.0/0", "0.0.0.0/0","0.0.0.0/0","0.0.0.0/0", "0.0.0.0/0,"]
// }