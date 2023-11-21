
variable "db_username" {
    description = "Database username"
    type = string
    default = "admin"
}

variable "db_password" {
    description = "Database username"
    type = string
    default = "notasecurepassword"
}

variable "vpc_security_group_ids_var" {
    description = "db security group"
    type = list(string)
}

variable "subnet_ids_var" {
    description = "subnet id"
    type = list(string)
}