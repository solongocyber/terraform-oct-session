variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "name"{
    type = string
    default = "homework_vpc"
}

variable "pub_subnet" {
type = string
default = "public_subnet_1"
}

variable "pub_subnet_2"{
    type =string
    default = "public_subnet_2"
}

variable "public_subnet_1_cidr"{
    type = string
    default = "10.0.1.0/24"
}

variable "public_subnet_2_cidr"{
    type = string
    default = "10.0.2.0/24"
}
variable "az_1"{
    type = string
    default = "us-east-2a"
}

variable "az_2"{
    type =string
    default = "us-east-2b"
}

variable "public_route_table"{
    type = string
    default = "public_rt"
}

variable "private_route_table"{
    type = string
    default = "private_rt"
}

variable "private_sub_1"{
    type = string
    default = "private_subnet_1"
}

variable "private_sub_2"{
    type = string
    default = "private_subnet_2"
}

variable "private_subnet_1_cidr"{
    type = string
    default = "10.0.11.0/24"
}

variable "private_subnet_2_cidr"{
    type = string
    default = "10.0.12.0/24"
}

variable "aws_nat_gateway" {
    type = string
    default = "nat_gateway"
}