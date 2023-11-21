
resource "aws_db_subnet_group" "db_group" {
    name = "subnet_group"
    description = "Academia Database"
    subnet_ids = var.subnet_ids_var
}



resource "aws_db_instance" "db" {
  allocated_storage    = 5
  name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0.33"
  instance_class       = "db.t2.micro"
  username             = "admin"
  password             = "testeteste"
  db_subnet_group_name = aws_db_subnet_group.db_group.id
  backup_retention_period = 7
  backup_window = "14:46-15:16"
  maintenance_window = "Mon:00:00-Mon:03:00"
  skip_final_snapshot  = true
}