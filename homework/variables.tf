variable "cidr_block" {
    type = string
    default = "10.0.0.0/24"
}

variable "name"{
    type = string
    default = "homework_vpc"
}

variable "public_subnet" {
type = string
default = "public_subnet_1"
}

variable "public_subnet_1_cidr"{
    type = string
    default = "10.0.0.0/24"
}

variable "az_1"{
    type = string
    default = "us-east-2a"
}

variable "pub_subnet_1"{
    type = string
    default = "public_subnet_1"
}
    