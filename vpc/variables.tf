

variable "vpc_cidr" {
    description = "CIDR block"
    type = string
    default = "10.0.0.0/16"
}


variable "sub_private_cidr" {
    description = "CIDR block"
    type = string
    default = "10.0.1.0/24"
}

variable "sub_public_cidr" {
    description = "CIDR block"
    type = string
    default = "10.0.2.0/24"
}